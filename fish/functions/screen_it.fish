#
# Start a custom screen session
#

function screen_it
    switch "$argv"
    case "stm"
        begin
            cd /home/frans/Documents/STMATB/Sources/
            set config "screen_$argv.rc"
        end
    case "issues"
        begin
            cd /home/frans/Documents/STMATB/Sources/Issues/
            set config "screen_$argv.rc"
        end
    case "gps"
        begin
            cd /home/frans/Documents/InTraffic/GPS_NS/
            set config "screen_$argv.rc"
        end
    case "euler"
        begin
            cd /home/frans/Documents/Personal/Euler/
            set config "screen_$argv.rc"
        end
    case '*'
        begin
            echo 'unknown project'
            set config "screenrc"
        end
    end

    screen -c $HOME/dotfiles/$config -S $argv
end

# --------------------------------------------------
