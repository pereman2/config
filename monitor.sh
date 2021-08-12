LAPTOP="eDP-1"
MONITOR="DP-2"
xrandr | grep connected
echo ""
xrandr | grep $MONITOR && xrandr --output DP-2 --primary --left-of $LAPTOP && echo "Done"
