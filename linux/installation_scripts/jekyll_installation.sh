echo "-----Installing Ruby and gem-----"
sudo apt-get -y install ruby-full build-essential zlib1g-dev

sudo echo '# Install Ruby Gems to ~/gems' >> ~/.zshrc
sudo echo 'export GEM_HOME="$HOME/gems"' >> ~/.zshrc
sudo echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc


echo "-----Installing jekyll-----"
sudo gem install jekyll bundler

# Also, install jekyll-paginate for /blog
echo "-----Adding additional gem requirements-----"
sudo gem install jekyll-paginate