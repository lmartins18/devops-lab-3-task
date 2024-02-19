#! bin/bash
sudo apt -y update && sudo apt -y install nodejs npm
# Install pm2
sudo npm install -g pm2
# Stop any instance of our application running currently
pm2 stop example_app
# Change directory to app's directory
cd devops-lab-3-task/
# Install app dependencies
npm install
# Start application on pm2
pm2 start ./bin/www --name example_app