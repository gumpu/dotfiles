!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# No Bell
xset -b
# Turn capslock into a control key.  Capslock is EVIL!
setxkbmap -option ctrl:nocaps
# Switch-off the touchpad. Nipple mouse is better!
synclient TouchpadOff=1
xrdb -merge ~/.Xdefaults
# Now start the window manager
exec i3 > ~/.i3/i3log 2>&1

