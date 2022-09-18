#
# Start a custom tmux session
#

function tmux_it
    switch "$argv"
        case stm
            begin
                echo 'STM-ATB'
                cd /home/frans/Documents/InTraffic/P44/Source/
                # Start in detached mode otherwise the commands
                # that are followed are only executed after
                # the session ends :)
                tmux new-session -d -s "$argv"
                tmux new-window -t "$argv" -n 'Edit'
                tmux new-window -t "$argv" -n 'Debug'
                tmux new-window -t "$argv" -n 'Build'
                tmux new-window -t "$argv" -n 'Jlink'
                tmux new-window -t "$argv" -n 'Output'
                tmux attach -t "$argv"
            end
        case ctrl
            begin
                echo 'STM-CTRL'
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
        case issues
            begin
                echo 'Issues'
                cd /home/frans/Documents/InTraffic/P44/Issues/
                tmux new-session -d -s "$argv"
                tmux new-window -t "$argv" -n 'DataAnalyse'
                tmux new-window -t "$argv" -n 'Temp'
                tmux attach -t "$argv"
            end
        case static
            begin
                echo 'Static'
                cd /home/frans/Documents/Personal/StaticWeb/
                tmux new-session -d -s "$argv"
                tmux new-window -t "$argv" -n 'Edit'
                tmux new-window -t "$argv" -n 'Build'
                tmux new-window -t "$argv" -n 'Serve'
                tmux attach -t "$argv"
            end
        case kaggle
            begin
                echo 'Kaggle'
                cd /home/frans/Documents/Personal/Kaggle/
                tmux new-session -d -s "$argv"
                tmux new-window -t "$argv" -n 'Edit'
                tmux new-window -t "$argv" -n 'Run'
                tmux new-window -t "$argv" -n 'Explore'
                tmux attach -t "$argv"
            end
        case euler
            begin
                echo 'Euler'
                cd /home/frans/Documents/Personal/Euler/projecteuler
                tmux new-session -d -s "$argv"
                tmux new-window -t "$argv" -n 'Edit'
                tmux new-window -t "$argv" -n 'Debug'
                tmux new-window -t "$argv" -n 'Build'
                tmux attach -t "$argv"
            end
        case sa
            begin
                echo 'sa'
                cd /home/frans/Documents/Personal/Optimization/SA/
                tmux new-session -d -s "$argv"
                tmux new-window -t "$argv" -n 'Edit'
                tmux new-window -t "$argv" -n 'Debug'
                tmux new-window -t "$argv" -n 'Build'
                tmux attach -t "$argv"
            end
        case galaxy
            begin
                echo 'galaxy'
                cd /home/frans/Documents/Personal/Games/GalaxyNGV2/
                tmux new-session -d -s "$argv"
                tmux new-window -t "$argv" -n 'Edit'
                tmux new-window -t "$argv" -n 'Debug'
                tmux new-window -t "$argv" -n 'Build'
                tmux attach -t "$argv"
            end
        case picomoeba
            begin
                echo 'picomoeba'
                cd /home/frans/Documents/Personal/Games/picomoeba/
                tmux new-session -d -s "$argv"
                tmux new-window -t "$argv" -n 'Edit'
                tmux new-window -t "$argv" -n 'Debug'
                tmux new-window -t "$argv" -n 'Build'
                tmux attach -t "$argv"
            end
        case rl
            begin
                echo 'rl'
                cd /home/frans/Documents/Personal/Coursera/RL/
                tmux new-session -d -s "$argv"
                tmux new-window -t "$argv" -n 'Edit'
                tmux new-window -t "$argv" -n 'Debug'
                tmux new-window -t "$argv" -n 'Sandbox'
                tmux attach -t "$argv"
            end
        echo 'Done'
        case aws
            begin
                echo 'aws'
                cd /home/frans/Documents/InTraffic/STM_AWS/Source/
                tmux new-session -d -s "$argv"
                tmux new-window -t "$argv" -n 'Edit'
                tmux new-window -t "$argv" -n 'Debug'
                tmux new-window -t "$argv" -n 'Sandbox'
                tmux attach -t "$argv"
            end
        echo 'Done'

    end
end

# --------------------------------------------------
