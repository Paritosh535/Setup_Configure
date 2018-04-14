echo "Start mongo Setup"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list
echo "update system"
sudo apt-get update

echo "install Mongo"
sudo apt-get install -y mongodb-org
echo "start for every reboot"
sudo systemctl start mongod

sudo systemctl status mongod
