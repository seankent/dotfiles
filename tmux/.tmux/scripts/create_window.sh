#!/bin/bash

# Check if the session/window already exists
tmux has-session -t "$SESSION:$WINDOW" 2>/dev/null;

if [ $? != 0 ]; then

    # Creat a new window
    tmux new-window -t $SESSION -n "$WINDOW"
    echo "[INFO] Creating tmux window '$WINDOW'"

    # Check if the script path provided exists
    if [ -f "$INIT" ]; then
        echo "[INFO] Running init script '$INIT' in window '$WINDOW'"
        source "$INIT"
    fi
fi
