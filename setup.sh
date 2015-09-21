#check ruby is installed or not
ruby -v

#install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# check for any warning or error
# might say something like xcode needs to update
brew doctor

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

#install java because its dependecy on many tools like webstorm and intellij
#install cask brew extention
brew install caskroom/cask/brew-cask

#GIT
brew install git

brew cask install iterm

#Node and npm
brew install -g node

#metor
curl https://install.meteor.com/ | sh

#mongo
brew install mongodb

#mongo command line client
npm install -g mongo-hacker

# applications
brew cask install --appdir="/Applications" webstorm
brew cask install --appdir="/Applications" evernote

brew cask install dockertoolbox
#virtualbox dependecy will be installed

# get android studio
#setup git and github account
#download atom editor
#download iterm
