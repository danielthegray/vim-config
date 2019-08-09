#!/bin/bash

initial_dir=`pwd`
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# On some environments (like Cygwin), I might want to copy the files
# instead of symlinking them, since it doesn't' fully support junctions
install_type=$1

if [[ -f "~/.vimrc" ]] ; then
		echo "A .vimrc installation already exists! Doing nothing..."
else
		base_dir=`pwd`
		# TODO: just detect Cygwin
		if [[ "$install_type" == "copy" ]] ; then
				cp vim/vimrc $HOME/.vimrc
				cp vim/vimrc $HOME/_vimrc
				cp -R vim/vimfiles/after $HOME/.vim/
		else
				ln -s $base_dir/vim/vimrc ~/.vimrc
				ln -s $base_dir/vim/vimfiles ~/.vim
		fi

		# Create needed directories for backups/undos, which are
		# declared in the .vimrc
		mkdir -p $HOME/.vim/backup
		mkdir -p $HOME/.vim/directory
		mkdir -p $HOME/.vim/undo
fi
