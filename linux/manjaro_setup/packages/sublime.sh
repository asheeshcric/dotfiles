echo "--------------------"
echo "Installing sublime text -- dev version..."

# install the GPG key
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg

# select the channel to use
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/dev/x86_64" | sudo tee -a /etc/pacman.conf

# Update pacman and install sublime
sudo pacman -Syu --noconfirm sublime-text
echo "Sublime-text installed successfully!"
echo "--------------------"
