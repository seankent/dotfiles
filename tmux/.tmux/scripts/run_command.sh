#!/bin/bash

# Run command in window
tmux send-keys -t $SESSION:$WINDOW "$COMMAND" C-m
echo "[INFO] Running command '$COMMAND' in window '$WINDOW'"
