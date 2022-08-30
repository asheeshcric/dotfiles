# Setup Zsh
echo "-----Installing 'zsh'-----"
sudo apt install -y zsh
echo "Setting up Oh-My-Zsh"
sudo apt install -y curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s $(which zsh)
