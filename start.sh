#!/bin/bash
set -e

echo "Starting tmate session..."

# Start tmate daemon with fixed socket
tmate -S /tmp/tmate.sock new-session -d

# Wait until tmate is ready
tmate -S /tmp/tmate.sock wait tmate-ready

# Print connection info (THIS IS WHAT YOU WANT)
tmate -S /tmp/tmate.sock display -p '#{tmate_ssh}'
tmate -S /tmp/tmate.sock display -p '#{tmate_web}'

# Keep container alive
tail -f /dev/null
