echo "-----Installing Network tools-----"

echo "-----Installing openssh-server-----"
sudo apt install -y openssh-server

echo "-----Installing 'nmap, netdiscover"
sudo apt-get install -y nmap netdiscover nikto

echo "------Installing Nutty GUI Tool-----"
sudo apt-add-repository ppa:bablu-boy/nutty.0.1
sudo apt-get update
sudo apt-get install -y nutty
