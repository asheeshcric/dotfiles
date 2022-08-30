echo "-----Running the setup script-----"
sudo apt-get update
sudo apt-get -y upgrade

# Install Google Chrome
echo "-----Installing Google Chrome-----"
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt update
sudo apt install -y google-chrome-stable

# Setup basic tools
echo "-----Installing basic tools-----"
sudo apt install -y git vim htop xclip guake autojump gedit cheese
sudo apt install -y nvtop

# Fix for Guake terminal freezing
sudo apt install --reinstall libutempter0
sudo echo >>~/.zshrc
sudo echo "# Autojump source" >>~/.zshrc
sudo echo ". /usr/share/autojump/autojump.sh" >>~/.zshrc
source ~/.zshrc

# Install python essentials
echo "-----Setting up virtualenvwrapper-----"
sudo apt-get install -y python3-dev python3-pip
python3 -m pip install --upgrade setuptools
sudo pip3 install virtualenvwrapper
mkdir ~/.virtualenvs
sudo echo >>~/.zshrc
sudo echo "# Virtualenvwrapper configuration" >>~/.zshrc
sudo echo "export WORKON_HOME=~/.virtualenvs" >>~/.zshrc
sudo echo "VIRTUALENVWRAPPER_PYTHON='/usr/bin/python3'" >>~/.zshrc
sudo echo "source $(which virtualenvwrapper.sh)" >>~/.zshrc
source ~/.zshrc
echo "-----Creating a new virtualenv named 'asheesh'-----"
mkvirtualenv asheesh
pip install numpy pandas matplotlib scikit-learn
deactivate

# Other tools
echo "-----Installing other linux tools-----"
sudo pip3 install thefuck
sudo echo >>~/.zshrc
sudo echo "# thefuck settings" >>~/.zshrc
sudo echo "eval $(thefuck --alias)" >>~/.zshrc
source ~/.zshrc

# Install Sublime Text
echo "-----Installing sublime text-----"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install -y sublime-text

# Install jupyter notebook
echo "-----Installing Jupyter Notebook-----"
sudo pip3 install jupyterlab
echo "Creating a kernel for jupyter based on the virtualenv 'asheesh'"
workon asheesh
pip install jupyterlab ipykernel tornado ipympl
ipython kernel install --user --name=asheesh
jupyter labextension install @jupyter-widgets/jupyterlab-manager jupyter-matplotlib
deactivate

#Install "bat"
echo "-----Installing Bat-----"
wget https://github.com/sharkdp/bat/releases/download/v0.11.0/bat-musl_0.11.0_amd64.deb
sudo dpkg -i bat-musl_0.11.0_amd64.deb
rm bat-musl_0.11.0_amd64.deb

# Install VS Code
echo "-----Installing VS Code-----"
source installation_scripts/vs_code.sh

# Install Albert
echo "------Installing Albert-----"
source installation_scripts/albert.sh

# ----- ALIASES -----

# Github commit aliases
sudo echo >>~/.zshrc
sudo echo "# Github commit copy aliases" >>~/.zshrc
sudo echo "alias pbcopy='xclip -selection clipboard'" >>~/.zshrc
sudo echo "alias pbpaste='xclip -selection clipboard -o'" >>~/.zshrc
sudo echo "alias today='git log --pretty="%s." --author=ashiz2013@gmail.com --since=midnight --all --no-merges | pbcopy'" >>~/.zshrc

# My personal aliases
sudo echo >>~/.zshrc
sudo echo "# Other regular aliases" >>~/.zshrc
sudo echo "alias plant='sudo apt-get install -y'" >>~/.zshrc
sudo echo "alias update='sudo apt-get update'" >>~/.zshrc
sudo echo "alias upgrade='sudo apt-get -y upgrade'" >>~/.zshrc
sudo echo "alias autoremove='sudo apt autoremove'" >>~/.zshrc
sudo echo "alias sublime='/opt/sublime_text/sublime_text'" >>~/.zshrc
sudo echo "alias jup='jupyter lab'" >>~/.zshrc
sudo echo "# Three month calendar alias" >>~/.zshrc
sudo echo "alias cal3='echo $(($(date +"%m") + 1)) $(date +"%Y") | xargs cal -3'" >>~/.zshrc
sudo echo "alias myip='dig +short myip.opendns.com @resolver1.opendns.com'" >>~/.zshrc

sudo echo >>~/.zshrc
sudo echo >>"# Connect to Heracleia Servers" >>~/.zshrc
sudo echo "alias ssh-heracleia='ssh -p 300 ashish@joe.cloud'" >>~/.zshrc
sudo echo "alias jup-heracleia='ssh -N -L 9000:127.0.0.1:9000 -t -p 300 ashish@joe.cloud'" >>~/.zshrc
sudo echo "alias ldap-heracleia='sudo ssh -p 300 -f -L 80:hades.local:80 ashish@joe.cloud -N'" >>~/.zshrc

# End Messages
echo "\n1.Set Guake to Startup Applications"
echo "\n2.Set up Cairo Dock"
echo "\n3.Set up Arc-Theme or any favorable one"
echo "\n4.Checkout some cool ohmyzsh plugins"
