source packages/syntax_highlighting.sh

# Installing git and other packages
sudo pacman -S --noconfirm git vim htop xclip guake gedit nvtop thefuck tmux bat
echo "eval $(thefuck --alias)" >> ~/.zshrc
source ~/.zshrc


# Install open-source build of VS Code, Node js, and nvm
echo "Installing VS code, node js, and nvm"
echo "# Convenience script for installing node and nvm" >> ~/.zshrc
echo "source /usr/share/nvm/init-nvm.sh" >> ~/.zshrc
source ~/.zshrc
sudo pacman -S --noconfirm code nodejs nvm npm

# Install sublime text
source packages/sublime.sh

# Install google-chrome
source packages/install_google_chrome.sh

# Setting up virtualenv
source packages/virtualenv.sh

# Set aliases to zsh
source packages/set_aliases.sh
