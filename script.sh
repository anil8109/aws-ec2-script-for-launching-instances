#!/bin/bash

#update the ubuntu machine
sudo apt update

#install nodejs in the machine 
sudo apt install nodejs

#install npm in the machine
sudo apt install npm

#Clone the repository
git clone https://github.com/anil8109/AWS-Demo-Project.git /home/ubuntu/project

#cd in the folder
cd /home/ubuntu/project

# Install Projects
sudo npm install

#install pm2
sudo npm i -g pm2

#turn up the server
sudo pm2 start index.js
