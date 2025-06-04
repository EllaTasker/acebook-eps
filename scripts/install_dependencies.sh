#!/bin/bash
# Navigate to app directory and fix permissions before installing npm dependencies

cd /home/ec2-user/acebook-eps || exit 1

echo "Fixing ownership and permissions..."
sudo chown -R ec2-user:ec2-user /home/ec2-user/acebook-eps
chmod -R u+w /home/ec2-user/acebook-eps

echo "Installing npm dependencies..."
npm install
