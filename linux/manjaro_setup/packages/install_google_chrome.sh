echo "--------------------"
echo "Cloning google-chrome repository"
git clone https://aur.archlinux.org/google-chrome.git

mv google-chrome ~/Downloads/backups/google-chrome
(cd ~/Downloads/backups/google-chrome && makepkg -s --noconfirm)
sudo pacman -U --noconfirm ~/Downloads/backups/google-chrome/google-chrome*.tar.xz
echo "Google chrome installed successfully!"
rm -rf ~/Downloads/backups/google-chrome
echo "--------------------"
