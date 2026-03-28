#!/bin/bash

# Check if the session already exists
tmux has-session -t $SESSION 2>/dev/null

if [ $? != 0 ]; then
    # Create a new session, detached (-d)
    tmux new-session -d -s $SESSION -n "$WINDOW" -c "$ROOT"
    echo "[INFO] Creating tmux session '$SESSION'"

    # Check if the script path provided exists
    if [ -f "$INIT" ]; then
        echo "[INFO] Running init script '$INIT' in window '$WINDOW'"
        source "$INIT"
    fi
fi
