#!/bin/bash
cd /home/ec2-user/acebook-eps || exit 1

export PORT=3030

# Install pm2 if not already installed
if ! command -v pm2 &> /dev/null
then
    echo "PM2 not found, installing..."
    sudo npm install -g pm2
fi

# Start or restart app
pm2 delete acebook || true
pm2 start ./bin/www --name acebook --update-env
pm2 save
