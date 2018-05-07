#installing unity tweak tool
sudo apt-get install unity-tweak-tool

#installing git
sudo apt-get install git

#installing node js
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

#install native add ons
sudo apt-get install -y build-essential

#installing the terminal command correcter
sudo apt update
sudo apt install python3-dev python3-pip
sudo pip3 install thefuck

#installing a better terminal
sudo apt install gdebi

wget https://github.com/Eugeny/terminus/releases/download/v1.0.0-alpha.18/terminus_1.0.0-alpha.18_amd64.deb

sudo gdebi terminus_1.0.0-alpha.18_amd64.deb
rm terminus_1.0.0-alpha.18_amd64.deb