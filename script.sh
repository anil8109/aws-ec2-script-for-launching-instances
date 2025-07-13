#!/bin/bash

# Store logs
exec > /var/log/user-data.log 2>&1

# Update the Ubuntu machine
sudo apt update -y

# Install Node.js and npm
sudo apt install -y nodejs npm

# Clone the repository
git clone https://github.com/anil8109/AWS-Demo-Project.git /home/ubuntu/project

# cd into the project directory
cd /home/ubuntu/project

# Install project dependencies
npm install  # ← no need for sudo here unless you are root

# Install PM2 globally
sudo npm install -g pm2

# Start the app with PM2
pm2 start index.js --name aws-demo

# Optional but recommended:
pm2 save
pm2 startup
