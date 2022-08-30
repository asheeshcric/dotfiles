echo "--------------------"
echo "Installing virtualenvwrapper..."
pip install --user virtualenvwrapper
echo "# virtualenvwrapper activation script" >> ~/.zshrc
echo "source $HOME/.local/bin/virtualenvwrapper.sh" >> ~/.zshrc
source ~/.zshrc

# Make a new virtualenv
echo "--------------------"
echo "Creating a new virtualenv..."
mkvirtualenv asheesh
echo "Installing essential pip packages..."
pip install numpy pandas matplotlib scikit-learn torch torchvision
deactivate
workon asheesh
pip install jupyterlab ipykernel tornado ipympl
ipython kernel install --user --name=asheesh
jupyter labextension install @jupyter-widgets/jupyterlab-manager jupyter-matplotlib
deactivate
echo "Virtualenv set up successful!"
echo "--------------------"
