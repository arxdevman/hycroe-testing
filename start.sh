#!/bin/bash
set -e

echo "Starting tmate session..."

tmate -S /tmp/tmate.sock new-session -d
tmate -S /tmp/tmate.sock wait tmate-ready

echo "TMATE SSH:"
tmate -S /tmp/tmate.sock display -p '#{tmate_ssh}'

echo "TMATE WEB:"
tmate -S /tmp/tmate.sock display -p '#{tmate_web}'

# FORCE LOG FLUSH
while true; do
  echo "tmate alive: $(date)"
  sleep 30
done
