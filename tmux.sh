#!/bin/sh 
tmux new-session -d
tmux split-window -v
tmux select-pane -t 0

tmux send-keys -t 0 'cd /home/rweiss/mud && tt++ main.tin' Enter
tmux send-keys -t 1 'cd /home/rweiss/mud && tail -fs .5 logs/*.log' Enter

tmux resize-pane -U 14

tmux -2 attach-session -d 
