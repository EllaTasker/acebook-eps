#!/bin/bash
# Navigate to app directory and start the app with nodemon or node

cd /home/ec2-user/acebook-eps || exit 1

echo "Starting Node.js app..."

# Run your app (adjust start command if needed)
nohup npm start > app.log 2>&1 &
