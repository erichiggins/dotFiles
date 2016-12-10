#!/bin/bash

dest=~/
files="gitconfig vimrc bash_profile hgrc tmux.conf"

echo "Copying dot files to $dest ..."
for file in $files; do
  cp $file $dest.$file
done


echo "Installing homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

echo "Installing brew packages..."
<osx/brew.txt xargs brew install

echo "Installing python packages..."
pip install -U pip
pip install -r pip.txt
