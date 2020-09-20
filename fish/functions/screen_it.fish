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
    case "prezoids"
        begin
            cd /home/frans/Documents/Personal/Prezoids/
            set config "screen_$argv.rc"
        end
    case "kritadev"
        begin
            cd /home/frans/Documents/Personal/KritaDev2/
            set config "screen_$argv.rc"
        end
    case "static"
        begin
            cd /home/frans/Documents/Personal/StaticWeb/
            set config "screen_$argv.rc"
        end
    case '*'
        begin
            echo 'unknown project'
            set config "screenrc"
        end
    end

    screen -c $HOME/dotfiles/Screen/$config -S $argv
end

# --------------------------------------------------
