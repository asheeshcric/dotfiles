# Install python3 if not already installed
brew install python3

# Install packages
pip3 install virtualenv virtualenvwrapper

# Make a directory to store the venvs
mkdir ~/.virtualenvs

# Add variables to the zsh file
echo "
# Virtualenvwrapper configuration
export WORKON_HOME=~/.virtualenvs
VIRTUALENVWRAPPER_PYTHON='$(which python3)'
source $(which virtualenvwrapper.sh)" >> ~/.zshrc

# Source .zshrc to effect the changes
source ~/.zshrc