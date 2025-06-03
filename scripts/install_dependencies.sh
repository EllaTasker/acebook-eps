#!/bin/bash
# Navigate to app directory and install npm dependencies

cd /home/ec2-user/acebook-eps || exit 1

echo "Installing npm dependencies..."
npm install
