#!/bin/bash

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/.local/lib

~/.local/bin/mosh-server $* -- bash -x ~/.new-tmux-session.sh
