#!/bin/bash

# Since they are just symlinks, deleting them like this should be fine
echo "Removing symlinked config..."
rm ~/.vimrc
rm ~/.vim
