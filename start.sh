#!/bin/bash

tmux new-session \; \
	send-keys 'nnn ~' C-m \; \
	split-window -v -p 30  \; \
	send-keys 'cd ~' C-m \; \
	send-keys 'clear' C-m \; \
	select-pane -t 0 \; \
	split-window -h -p 70 \; \
	send-keys 'cd ~' C-m \; \
	send-keys 'clear' C-m \;
