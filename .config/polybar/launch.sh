# Basic script to kill all old bars and launch new.

# Terminate already running bad instances
killall -q polybar
#while pgrep -x polybar >/dev/null; do sleep 1; done 
#nitrogen --set-auto ~/Pictures/galaxies_stars_sky_dark_nebula_101228_1920x1080.jpg
#nitrogen --set-auto ~/Pictures/paint_stains_purple_118346_1920x1080.jpg
nitrogen --set-auto ~/Pictures/walls/green hills.png




# Wait until the processes have been shut down
#while grep -x polybar >/dev/null; do sleep 1; done

# Launch the example bar
polybar top
polybar bottom


