#!/bin/sh
xrandr --newmode "3440x1440_60.00"  419.50  3440 3696 4064 4688  1440 1443 1453 1493 -hsync +vsync                                
xrandr --addmode DP-3  "3440x1440_60.00"                                                                                          
xrandr --output DP-3 --mode "3440x1440_60.00" --primary --left-of eDP-1 --rate 60                                                 
