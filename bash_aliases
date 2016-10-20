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

