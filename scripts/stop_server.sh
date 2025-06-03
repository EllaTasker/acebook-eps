#!/bin/bash
# Stop any running Node.js app on port 3000 (adjust if needed)

# Find the PID of the app running on port 3000 and kill it
PID=$(lsof -ti tcp:3030)

if [ -n "$PID" ]; then
  echo "Stopping Node.js app with PID $PID"
  kill -9 $PID
else
  echo "No Node.js app running on port 3030"
fi
