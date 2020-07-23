#!/bin/bash

TMUX=~/.local/bin/tmux

$TMUX attach -t $($TMUX ls | grep -v attached | head -1 | cut -f1 -d:) || $TMUX
