#!/bin/sh
#
# ~/.xinitrc
#

# No Bell
xset -b

# Turn capslock into a control key.  Capslock is EVIL!
setxkbmap -option ctrl:nocaps

# Switch-off the touchpad. Nipple mouse is better!
synclient TouchpadOff=1

xrdb -merge ~/.Xdefaults

# Now start the window manager
exec /usr/local/bin/slstatus &
exec /usr/local/bin/dwm

# ------------------------ End of file -----------------------------
