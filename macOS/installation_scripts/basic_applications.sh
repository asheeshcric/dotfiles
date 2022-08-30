# Install Alfred
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null ; brew install caskroom/cask/brew-cask 2> /dev/null
brew install --cask alfred

# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# Install iTerm2 -- A dropdown terminal for MacOS
brew install --cask iterm2

# Install htop and speedtest
brew install htop speedtest-cli

# Install Youtube downloader for commandline
brew install youtube-dl ffmpeg

# Install cheatsheet
brew install --cask cheatsheet

echo "Read README.txt file to setup iTerm2 to make it behave like a dropdown terminal"