#!/bin/bash

session="IDE-LIKE"

initdir=$(pwd)
workdir=$(dirname "$0")
cd "$workdir"
cp nanorc ~/.nanorc

export EDITOR=$(pwd)/nnn-edit
export VISUAL=$(pwd)/nnn-edit


tmux \
	new-session -s "$session" \; \
	send-keys 'nnn '"$initdir"' -f -d -o -e' Enter \; \
	split-window -c "$initdir" -v -p 25  \; \
	select-pane -t 0 \; \
	split-window -c "$initdir" -h -p 75 \; \
	split-window -c "$initdir" -h -p 50 \; \
	set-option -g mouse on \; \
	set-option -g prefix C-a \; unbind-key C-b \; \
	bind Escape copy-mode \; unbind [ \; \
	bind x confirm-before kill-session \;
