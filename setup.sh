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
brew cask install sublime-text
brew cask install xquartz
brew cask install java
brew cask install postman
brew cask install teamviewer
brew cask install intellij-idea
brew cask install postico
brew cask install postgres

echo 'export PATH="~/Applications/Postgres.app/Contents/Versions/latest/bin/:$PATH"' >> ~/.bash_profile
 
## mac packages
brew install wget
brew install mongodb
brew install graphviz
brew install imagemagick
brew install terminal-notifier
brew install gcc
brew install npm
 
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
