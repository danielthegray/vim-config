#!/bin/bash

initial_dir=`pwd`
base_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

if [[ -e "~/.vimrc" ]] ; then
	echo "A .vimrc file already exists! Doing nothing..."
else
	echo "Linking ~/.vimrc..."
	ln -s $base_dir/vim/vimrc ~/.vimrc
fi
if [[ -e "~/.vim" ]] ; then
	echo "A .vim folder already exists! Doing nothing..."
else
	echo "Linking ~/.vim..."
	ln -s $base_dir/vim/vimfiles ~/.vim
	# Create needed directories for backups/undos, which are
	# declared in the .vimrc
	mkdir -p $base_dir/vimfiles/backup
	mkdir -p $base_dir/vimfiles/directory
	mkdir -p $base_dir/vimfiles/undo
fi

cd $initial_dir
