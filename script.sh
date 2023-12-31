echo "pwd"
sudo pwd
sudo ls -ll
sudo su

echo "Kill all the running PM2 actions"
sudo pm2 kill

echo "Jump to app folder"
cd /home/runner/work/node/node

echo "Update app from Git"
git pull

echo "Install app dependencies"
sudo rm -rf node_modules package-lock.json
sudo npm install

# echo "Build your app"
# sudo npm run build

echo "Run new PM2 action"
# sudo cp /home/runner/work/node/node/eccosystem.json eccosystem.json
sudo pm2 start eccosystem.json