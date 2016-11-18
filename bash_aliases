# This allows us to install i3 under Ubuntu and have it work properly.
case "$XDG_CURRENT_DESKTOP" in
    i3)
        xrdb ~/.Xdefaults
        # Touchpads are evil 
        synclient TouchpadOff=1
        ;;

    *)
        ;;
esac


# Remember all commands ever entered.
export HISTSIZE=-1
# This only works if HISTFILESIZE is not set in .bashrc
export HISTFILESIZE=-1
# Append command history, don't overwrite it.
shopt -s histappend

