#!/bin/bash

tmux new-session \; \
	send-keys 'nnn ~ -f -d -o -e' C-m \; \
	split-window -v -p 25  \; \
	send-keys 'cd ~' C-m \; \
	send-keys 'clear' C-m \; \
	select-pane -t 0 \; \
	split-window -h -p 75 \; \
	send-keys 'cd ~' C-m \; \
	send-keys 'clear' C-m \; \
	split-window -h -p 50 \; \
	send-keys 'cd ~' C-m \; \
	send-keys 'clear' C-m \;

