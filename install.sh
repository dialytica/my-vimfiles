#! /usr/bin/env sh
DOTVIM=$HOME/.vim
DOTVIMRC=$HOME/.vimrc

# Backing up current .vim files
echo "Checking if vim configuration exists and back it up"
[ -e $DOTVIM ] && cp -rf $DOTVIM $DOTVIM.bak
[ -e $DOTVIMRC ] && cp -f $DOTVIMRC $DOTVIMRC.bak

echo "Copying the configuration files into $HOME"
cp -r ./.vim  $DOTVIM
cp ./.vimrc  $DOTVIMRC
