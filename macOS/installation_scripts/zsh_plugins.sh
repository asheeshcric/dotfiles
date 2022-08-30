# Install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install autojump
brew install autojump

# Install zsh-history-substring-search
 git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search


# Install sysadmin-util
git clone https://github.com/skx/sysadmin-util.git ~/.oh-my-zsh/custom/plugins/sysadmin-util


echo "Add all of these to the plugins tuple in .zshrc"
echo "extract"
echo "zsh-autosuggestions"
echo "zsh-syntax-highlighting"
echo "autojump"
echo "zsh-history-substring-search"
echo "sysadmin-util"