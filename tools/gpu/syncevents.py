#!/usr/bin/python2
import os, sys, subprocess
import re
import multiprocessing as mp
from collections import Counter
import tempfile
import argparse
import signal



def exec_cmd(command): # return stdout, stderr output of a command
    return subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE).communicate()

def is_required(name, filter, exclude):
    for fil in filter:
        if fil not in name:
            return 0
    for exc in exclude:
        if exc in name:
            return 0
    return 1


def get_events_folders(server, filter=['limited'], exclude=[]):
    if server == 'lig':
        out, _ = exec_cmd('ssh elbayadm@%s.ligone "ls ~/work/torchcap/events"')
    elif server == 'inria':
        out, _ = exec_cmd('ssh pascal "ls ~/scratch/work/torchcap/events"')
    else:
        raise ValueError('Unknown server %s' % server)

    out = out.decode('utf-8').splitlines()
    # filter:
    if out:
        out = [model for model in out if is_required(model, filter, exclude)]
        print('List of events folders:', out)
        return out
    else:
        return 0


def sync_required(models, server='inria'):
    parentdir = tempfile.mkdtemp(dir='/home/maha/work/Events/cap')
    print('tmp dir:', parentdir)
    for model in models:
        holder = '%s/%s' % (parentdir, model)
        if not os.path.isdir(holder):
            os.makedirs(holder)
        if server == 'inria':
            print('syncing %s @inria' % model)
            o, e = exec_cmd('sshfs pascal:/home/thoth/melbayad/scratch/work/torchcap/events/%s %s' % (model, holder))
            if e:
                print('Error:', e)
        else:
            print('Not implemented yet')
    return parentdir


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--filter', '-f', nargs="+", help='keywords to include')
    parser.add_argument('--exclude', '-e', nargs="+", help='keywords to exculde')
    args = parser.parse_args()
    if not args.filter:
        args.filter = ['baseline']
    if not args.exclude:
        args.exclude = []
    print('filters:', args.filter, 'excluding:', args.exclude)
    models = get_events_folders('inria', filter=args.filter, exclude=args.exclude)
    if models:
        parentdir = sync_required(models)

        def signal_handler(*args):
            print('You pressed Ctrl+C!')
            print('Unmounting events folders')
            for model in models:
                exec_cmd('fusermount -uz %s/%s' % (parentdir, model))
                os.removedirs("%s/%s" % (parentdir, model))
            try:
                os.removedirs(parentdir)
            except:
                pass
            sys.exit(0)

        signal.signal(signal.SIGINT, signal_handler)
        port = 6600
        port_used = 1
        while port_used:
            print('use CTRL-C to quit')
            print('Tensorboad @%d' % port)
            o, e = exec_cmd('tensorboard --logdir=%s --port %d' % (parentdir, port))
            if 'already' in e:
                print('error:', e)
                port += 1
            else:
                port_used = 0


