#!/bin/sh
#
# ~/.xinitrc
#

# No Bell
xset -b

# Turn capslock into a control key.  Capslock is EVIL!
setxkbmap -option ctrl:nocaps
xmodmap -e "keycode 94 = Shift_L"

# Switch-off the touchpad. The one on my ThinkPad is over sensitive
# and gets in the way while using the keyboard.
synclient TouchpadOff=1

xrdb -merge ~/.Xdefaults

~/.fehbg

# To prevent slo-start of gnome applications
dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY

# Now start the window manager
exec /usr/local/bin/slstatus &
exec /usr/local/bin/dwm

# FVWM3
# exec /home/frans/local/bin/fvwm3

# ------------------------ End of file -----------------------------
