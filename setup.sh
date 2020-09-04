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
# brew cask install intellij-idea
brew cask install postico
brew cask install postgres
brew cask install shiftit
#brew cask install spectacle
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
#brew cask install kindle
#brew cask install omnigraffle
brew cask install spotify
#brew cask install utorrent
#brew cask install the-unarchiver
#brew cask install virtualbox
#brew cask install intellij-idea
brew cask install webstorm
# brew cask install pycharm
brew cask install pycharm-ce
brew cask install openshot-video-editor
brew cask install screaming-frog-seo-spider
brew cask install limechat
# brew cask install android-studio
brew cask install mactex
brew cask install pdftotext
brew cask install keycastr
brew cask install alt-tab


#brew install gpg


echo 'export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin/:$PATH"' >> ~/.bash_profile
 
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
brew install youtube-dl
brew install mackup 
brew install htop #best top replacement
brew install speedtest_cli #gives you network bandwidth measurement
brew install lftp #nice commandline ftp
brew install ctags #manage programming language tags (used with vim)
brew install phantomjs
brew install heroku
brew install vim #--override-system-vi

#brew install coreutils
#brew install moreutils
#brew install findutils
#brew install gnu-sed --with-default-names
#brew install zsh
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
brew install nmap
#brew install rtv #reddit client for your terminal
#brew install opensc 
#brew install mutt #powerful text-based mail client for Unix operating systems
#brew install the_silver_searcher # search files like grep, but faster
#brew install elinks #browse the web in text mode
#brew install gnupg #reconquer your privacy
#brew install rtorrent
#brew install transmission #bittorrent client
#brew install node
#brew install go
#brew install aws-shell
#brew install jq #'like sed for JSON data'
brew install unrar #unarchive .rar files
#brew install multimarkdown #supports the awesome mmd formatting system
#brew install bash #gives you v4, a more modern version (note you need to add it to approved shells and use chsh to switch to it
#brew install bash-completion #excellent escape command completion for bash
#brew install git-crypt #to support automatic encryption on pushing to git
#brew install awscli #commandline tools for AWS -- frequently updated
#brew install calc 
#brew install ccrypt #strong file crypt tool
#brew install dos2unix #convert CRLF <--> CR
#brew install geoip #find where an IP address comes from
#brew install git-flow
#brew install hh #shell history browser / searcher
#brew install irssi #my favorite commandline irc client
#brew install links #best text mode web browser
#brew install lynx #second best text mode web browser
brew install ncdu #ncurses disk usage browser
#brew install tig #curses git repo browser; git command line interface
brew install tmux #terminal multiplexer - a better 'screen'
#brew install vimpager #use vim colorization rules for paging through any file - you may want to replace 'less' with this
brew install ffmpeg #A complete, cross-platform solution to record, convert and stream audio and video.
#brew install mysql
#brew install colordiff #diff with pretty syntax highlighting
#brew install gawk #
#brew install cowsay
#brew install axel #light command line download accelerator
#brew install rlwrap #readline wrap
#brew install dockutil # clean up the dock bar
brew install webkit2png
#brew install graphicsmagick #swiss army knife of image processing
#brew install imagemagick #edit bitmap images
#brew install watch #provide information out of the pseudo-filesystem most commonly located at /proc
#brew install jpegoptim #utility to optimize/compress JPEG files
#brew install fish #a smart and user-friendly command line shell for macOS, Linux, and the rest of the family.
#brew install hub #a command-line wrapper for git that makes you better at GitHub.
#brew install z #Tracks your most used directories, based on 'frecency'.
#brew install vnstat #keeps a log of network traffic for the selected interface(s)
brew install mit-scheme

###################################################
###################################################
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
