# This allows us to install i3 under Ubuntu and have it work properly.
case "$XDG_CURRENT_DESKTOP" in
    i3)
        xrdb ~/dotfiles/Xdefaults_Light  # .Xdefaults
        # Touchpads are evil
        synclient TouchpadOff=1
        ;;

    *)
        ;;
esac

# Remember all commands ever entered.
#
export HISTSIZE=-1
# This only works if HISTFILESIZE is not set in .bashrc
export HISTFILESIZE=-1
# Append command history, don't overwrite it.
export HISTIGNORE=ls
shopt -s histappend

# Problem with the default prompt (Ubuntu) is that when you are deep in a
# directory tree very litte space is left to type your commands.  To solve
# this I use a two line prompt.
export PS1="\t \u@\h\\$ {\$?} \w\n$ \[$(tput sgr0)\]"
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'

# To get rid of ' WARNING **: Couldn't connect to accessibility bus: '
# emitted by InkScape that break a makefile build
export NO_AT_BRIDGE=1

# For ESP32
# export PATH="$PATH:/home/frans/esp/crosstool-NG/builds/xtensa-esp32-elf/bin"
# export IDF_PATH=/home/frans/esp/esp-idf

# For MiniZinc
# export PATH="$PATH:/home/frans/Documents/Personal/Coursera/Optimization/MiniZincIDE-2.1.7-bundle-linux-x86_64/"

# For ARM
# export PATH="$PATH:/opt/arm/gcc-arm-none-eabi-6-2017-q2-update/bin/"


# Takes care of
# ERROR: ld.so: object 'libgtk3-nocsd.so.0' from LD_PRELOAD cannot be
# preloaded (cannot open shared object file): ignored.
#export LD_PRELOAD=""

