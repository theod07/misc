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
brew cask install evernote
brew cask install slack

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
brew install tree #view directory structure under CWD
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
brew install youtube-dl
#brew install htop #best top replacement
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
#brew install speedtest_cli #gives you network bandwidth measurement
#brew install aws-shell
#brew install jq #'like sed for JSON data'
#brew install lftp #nice commandline ftp
#brew install unrar #unarchive .rar files
###################################################
###################################################
#`multi markdown` - supports the awesome mmd formatting system
#`bash` - gives you v4, a more modern version (note you need to add it to approved shells and use chsh to switch to it
#`bash-completion` - excellent escape command completion for bash
#`git-crypt` - to support automatic encryption on pushing to git
#awscli - commandline tools for Amazon web services -- frequently updated. Nice to have brew take care of it
#calc - my go-to calculator
#ccrypt - strong file crypt tool
#dos2unix - convert CRLF <--> CR
#geoip - find where an IP address comes from
#git-flow
#hh - shell history browser / searcher
#irssi - my favorite commandline irc client
#links - best text mode web browser
#lynx - second best text mode web browser
#ncdu - ncurses disk usage browser
#tig - curses git repo browser; git command line interface
#tmux - terminal multiplexer - a better 'screen'
#vimpager - use vim colorization rules for paging through any file - you may want to replace 'less' with this
#ffmpeg
#mysql
#colordiff
#gawk 
#cowsay
#axel
#rlwrap #readline wrap



#brew cask install kindle
#brew cask install omnigraffle
#brew cask install spectacle
#brew cask install spotify
#brew cask install utorrent
#brew cask install the-unarchiver
#brew cask install virtualbox
#brew install dockutil # clean up the dock bar
#brew cask install intellij-idea
#brew install gpg


#I use RVM: Ruby Version Manager for ruby versions, creationix/nvm for node versions and SDKMAN! the Software Development Kit Manager for JVM based languages/tools.
#sdk install gradle
#sdk install groovy
#sdk install scala
#sdk install grails
#sdk install springboot
#sdk install maven
#sdk install sbt
#on a fresh mac I always run dockutil --remove all to cleanup the dock bar
#to be continued.. https://www.quora.com/What-are-the-first-or-must-have-homebrew-packages-that-you-install-on-your-Mac
###################################################
###################################################

# Run the rest of the script from a safe place
cd /tmp
 
# python
curl -L https://repo.continuum.io/archive/Anaconda3-4.2.0-MacOSX-x86_64.sh > anaconda_script.sh
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
