set -x FAST 1

# The following variable gets rid of the message
# "Couldn't connect to accessibility bus: Failed to connect to socket"
set -x NO_AT_BRIDGE 1

set -gx WORKON_HOME /home/frans/.virtualenvs/
. ~/.config/fish/workon_funcs.fish

if status is-interactive
    fish_logo
end

