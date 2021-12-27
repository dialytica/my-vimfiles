$DOTVIM="${HOME}\vimfiles"
$DOTVIMRC="${HOME}\_vimrc"

# Backing up current .vim files

if (Test-Path $DOTVIM) {
	Copy-Item $DOTVIM -Destination "${DOTVIM}.bak" -Recurse -Force
}

if (Test-Path $DOTVIMRC) {
	Copy-Item $DOTVIMRC -Destination "${DOTVIMRC}.bak" -Force
}

echo "Copying the configuration files into $HOME"
Copy-Item .\.vim -Destination $DOTVIM -Recurse -Force
cp .\.vimrc -Destination $DOTVIMRC -Force
