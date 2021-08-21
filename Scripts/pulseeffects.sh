#!/usr/bin/env bash

# Terminate already running bar instances
killall pulseeffects

# Wait until the processes have been shut down
while pgrep -u $UID -x pulseeffects >/dev/null; do sleep 1; done

# Launch polybar
pulseeffects
