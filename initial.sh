#!/bin/bash
# Check that Homebrew is installed and install it if not
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
# Update any existing homebrew recipes
brew update
# Upgrade any already installed formulae
brew upgrade --all
# Install desired cask packages
brew cask install skype
brew cask install slack
brew cask install the-unarchiver
brew cask install atom
brew cask install vlc
brew cask install teamviewer-quicksupport
brew cask install opera
brew cask install google-chrome
brew cleanup
# download packages is better than cask
open https://dl.google.com/drive-file-stream/googledrivefilestream.dmg
open https://zoom.us/client/latest/Zoom.pkg
# drivers for printers
open https://o.cses.konicaminolta.com/file/Default.aspx?FilePath=DL/201904/23123119/BHC3100PPSMacOS1010_160MU.dmg
open https://o.cses.konicaminolta.com/file/Default.aspx?FilePath=DL/201606/27031742/BHC554ePSMacOS109_540MU.dmg
# MS Office
open https://drive.google.com/file/d/17YaWGKM7HN618WWVSeIUxxqZEs0cwKRg
# CUPS Printer Interface Enable
cupsctl WebInterface=yes
open http://localhost:631/printers/
