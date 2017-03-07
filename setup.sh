#!/bin/sh

DOT_FILES=(.vimrc)

for file in ${DOT_FILES[@]}
do
	ln -s $HONE/dotfiles/$file $HOME/$file
done

