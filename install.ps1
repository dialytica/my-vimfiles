$DOTVIM=$HOME/vimfiles
$DOTVIMRC=$HOME/_vimrc

# Backing up current .vim files

if (Test-Path $DOTVIM) {
	cp -r $DOTVIM $DOTVIM.bak
}

if (Test-Path $DOTVIMRC) {
	cp -r $DOTVIMRC $DOTVIMRC.bak
}

echo "Copying the configuration files into $HOME"
cp -r ./vim $DOTVIM
cp ./.vimrc $DOTVIMRC
