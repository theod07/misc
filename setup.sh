## Setup environment

xcode-select --install

touch ~/.bashrc
touch ~/.bash_profile

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Mac apps
brew tap caskroom/cask
brew install brew-cask
brew cask install google-chrome
brew cask install firefox
brew cask install iterm2
brew cask install atom
brew cask install sublime-text
brew cask install xquartz
brew cask install java
brew cask install postman
brew cask install teamviewer
brew cask install intellij-idea
brew cask install postico
brew cask install postgres
brew cask install shiftit
#brew cask install betterzipql
brew cask install qlcolorcode
brew cask install qlimagesize
brew cask install qlmarkdown
#brew cask install qlstephen
#brew cask install qlprettypatch
#brew cask install quicklook-csv
brew cask install quicklook-json
brew cask install suspicious-package
#brew cask install alfred #productivity at your fingertips
brew cask install skype
#brew cask install openemu #videogame emulator
brew cask install vlc
#brew cask install clamvax #antivirus/malware scanner for mac
brew cask install flux
#brew cask install mou #markdown editor
#brew cask install caffeine #keep mac from going to sleep
brew cask install cheatsheet
#brew cask install blockblock #
brew cask install knockknock #See what's persistently installed on your Mac.
brew cask install appcleaner #thoroughly uninstall unwanted apps
#brew cask install filezilla #ftp
#brew cask install dropbox
brew cask install google-drive
#brew cask install tiddlywiki


echo 'export PATH="~/Applications/Postgres.app/Contents/Versions/latest/bin/:$PATH"' >> ~/.bash_profile
 
## mac packages
brew install wget
brew install mongodb
brew install graphviz
brew install imagemagick
brew install terminal-notifier
brew install gcc
brew install npm
brew install git
brew install tree
#brew install coreutils
#brew install moreutils
#brew install findutils
#brew install gnu-sed --with-default-names
#brew install zsh
#brew install vim --override-system-vi
#brew install macvim
#brew install homebrew/dupes/grep
#brew install homebrew/dupes/openssh
#brew install homebrew/dupes/screen
#brew install ack
#brew install dark-mode
#brew install git-lfs
#brew install p7zip
#brew install rename
#brew install ssh-copy-id
#brew install rbenv
#brew install ruby-build
#brew install rbenv-default-gems
#brew install tmux
brew install youtube-dl
#brew install htop
#brew install nmap
#brew install rtv #reddit client for your terminal
brew install mackup 
#brew install opensc
#brew install mutt
#brew install the_silver_searcher # search files like grep, but faster
#brew install elinks #browse the web in text mode
#brew install gnupg #reconquer your privacy
#brew install rtorrent
#brew install transmission #bittorrent client
#brew install node
#brew install go
#brew install speedtest_cli
#brew install aws-shell
 
cd /Applications
wget https://justgetflux.com/mac/Flux.zip
unzip Flux.zip
rm Flux.zip

# Run the rest of the script from a safe place
cd /tmp
 
# python
curl -L http://repo.continuum.io/archive/Anaconda2-4.0.0-MacOSX-x86_64.sh > anaconda_script.sh
bash anaconda_script.sh
# update Anaconda to current version
conda update conda
conda update anaconda
rm ~/Desktop/Launcher.app
rm anaconda_script.sh
source ~/.bash_profile
conda install --yes statsmodels
conda install --yes networkx
conda install --yes pymc
pip install pymongo
wget -nc http://py.processing.org/processing.py-0202-macosx.tgz
conda install -c https://conda.binstar.org/trent psycopg2
rm processing.py-0202-macosx.tgz
pip install unittest2
pip install pytest
