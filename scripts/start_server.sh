#!/bin/bash
cd /home/ec2-user/app
pm2 stop dummy-app || true
pm2 start npm --name "dummy-app" -- run start
