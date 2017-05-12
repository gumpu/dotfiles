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
# 
export HISTSIZE=-1
# This only works if HISTFILESIZE is not set in .bashrc
export HISTFILESIZE=-1
# Append command history, don't overwrite it.
export HISTIGNORE=ls
shopt -s histappend

# Problem with the default prompt (Ubuntu) is that when
# you are deep in a directory tree very litte space
# is left to type your commands.  To solve this
# I use a two line prompt.
export PS1="\t \u@\h\\$ {\$?} \w\n$ \[$(tput sgr0)\]"
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'


export OTIS_HOME=/home/frans/Sandbox/Source
export PYTHONPATH=$OTIS_HOME/:$OTIS_HOME/lib/:
export OTIS_LOGGING=/home/frans/Logging
export OTIS_DB=$OTIS_LOGGING/otis.db

