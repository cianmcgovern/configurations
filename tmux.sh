#!/bin/sh

tmux new-session -d -s sup
tmux new-window -t 'sup' -n 'irc'
tmux -2 attach-session -t sup
