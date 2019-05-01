synclient TouchpadOff=1

set -x FAST 1

# Takes care of the
# "Couldn't connect to accessibility bus" message
set -x NO_AT_BRIDGE 1

set -gx WORKON_HOME /home/frans/.virtualenvs/
. ~/.config/fish/workon_funcs.fish

if status is-interactive
    fish_logo
end

