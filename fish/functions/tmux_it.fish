#
# Start a custom tmux session
#

function tmux_it
    switch "$argv"
    case "stm"
        begin
            echo 'STM'
            cd /home/frans/Documents/InTraffic/P44/Source/
            # Start in detached mode otherwise the commands
            # that are followed are only executed after
            # the session ends :)
            tmux new-session -d -s "$argv"
            tmux new-window -t "$argv" -n 'Edit'
            tmux new-window -t "$argv" -n 'Debug'
            tmux new-window -t "$argv" -n 'Build'
            tmux attach -t "$argv"
        end
    case "issues"
        begin
            echo 'Issues'
            cd /home/frans/Documents/InTraffic/P44/Issues/
            tmux new-session -d -s "$argv"
            tmux new-window -t "$argv" 'mutt'
            tmux attach -t "$argv"
        end
    case "static"
        begin
            echo 'Static'
            cd /home/frans/Documents/Personal/StaticWeb/
            tmux new-session -d -s "$argv"
            tmux new-window -t "$argv" -n 'Edit'
            tmux new-window -t "$argv" -n 'Build'
            tmux new-window -t "$argv" -n 'Serve'
            tmux attach -t "$argv"
        end
    end
    case "euler"
        begin
            echo 'Euler'
            cd /home/frans/Documents/Personal/Euler/projecteuler
            tmux new-session -d -s "$argv"
            tmux new-window -t "$argv" -n 'Edit'
            tmux new-window -t "$argv" -n 'Debug'
            tmux new-window -t "$argv" -n 'Build'
            tmux attach -t "$argv"
        end
    echo 'Done'
end

# --------------------------------------------------
