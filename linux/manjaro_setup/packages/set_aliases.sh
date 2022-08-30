# ----- ALIASES -----

echo "--------------------"
echo "Setting up aliases..."

# Github commit aliases
sudo echo >> ~/.zshrc
sudo echo "# Github commit copy aliases" >> ~/.zshrc
sudo echo "alias pbcopy='xclip -selection clipboard'" >> ~/.zshrc
sudo echo "alias pbpaste='xclip -selection clipboard -o'" >> ~/.zshrc
sudo echo "alias today='git log --pretty="%s." --author=ashiz2013@gmail.com --since=midnight --all --no-merges | pbcopy'" >> ~/.zshrc

# My personal aliases
sudo echo >> ~/.zshrc
sudo echo "# Other regular aliases" >> ~/.zshrc
sudo echo "alias plant='sudo pacman -S --noconfirm'" >> ~/.zshrc
sudo echo "alias update='sudo pacman -Syu'" >> ~/.zshrc
sudo echo "alias sublime='subl'" >> ~/.zshrc
sudo echo "alias jup='jupyter lab'" >> ~/.zshrc
sudo echo "# Three month calendar alias" >> ~/.zshrc
sudo echo "alias cal3='echo $((`date +"%m"` + 1)) `date +"%Y"` | xargs cal -3'" >> ~/.zshrc
sudo echo "alias myip='dig +short myip.opendns.com @resolver1.opendns.com'" >> ~/.zshrc

sudo echo >> ~/.zshrc
sudo echo "# Connect to Heracleia Servers" >> ~/.zshrc
sudo echo "alias ssh-heracleia='ssh -p 300 ashish@joe.cloud'" >> ~/.zshrc
sudo echo "alias jup-heracleia='ssh -N -L 9000:127.0.0.1:9000 -t -p 300 ashish@joe.cloud'" >> ~/.zshrc
sudo echo "alias ldap-heracleia='sudo ssh -p 300 -f -L 80:hades.local:80 ashish@joe.cloud -N'" >> ~/.zshrc


echo "Aliases set up completed...!!!"
