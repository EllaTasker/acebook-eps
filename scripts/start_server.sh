#!/bin/bash
cd /home/ec2-user/acebook-eps || exit 1

# Optional: ensure PORT is set
export PORT=3030

# Start or restart the app with PM2
pm2 delete acebook || true
pm2 start ./bin/www --name acebook --update-env
