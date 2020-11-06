#!/bin/bash

export VISUAL=$(pwd)/nnn-edit
export EDITOR=$(pwd)/nnn-edit

session="IDE-LIKE"

tmux \
	new-session -s "$session" \; \
	send-keys 'nnn ~ -f -d -o -e' Enter \; \
	split-window -v -c '~' -p 25  \; \
	select-pane -t 0 \; \
	split-window -h -c '~' -p 75 \; \
	split-window -h -c '~' -p 50 \; \
	set-option -g mouse on \; \
	set-option -g prefix C-a \; unbind-key C-b \; \
	bind Escape copy-mode \; unbind [ \; \
	bind x confirm-before kill-session \;
