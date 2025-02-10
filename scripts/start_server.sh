#!/bin/bash
export PATH=$PATH:/home/ec2-user/.nvm/versions/node/v23.7.0/bin
cd /home/ec2-user/app
pm2 stop dummy-app || true
pm2 start npm --name "dummy-app" -- run start
