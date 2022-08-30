# Install python3 if not already installed
brew install python3

# Install node for jupyterlab extension
brew install node

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

# Create a virtualenv for default necessary packages and install them
mkvirtualenv default

pip install numpy pandas matplotlib
pip install jupyterlab ipykernel tornado ipympl
ipython kernel install --user --name=asheesh
jupyter labextension install @jupyter-widgets/jupyterlab-manager jupyter-matplotlib

deactivate