#!/bin/sh

mkdir ~/.vim
mkdir ~/.vim/bundle
mkdir ~/.vim/.undo
mkdir ~/.vim/.swap

dotfiles=(
.vimrc
.vimrc.basic 
.vimrc.visual
.vimrc.edit
.vimrc.bundle
.vim
)

for dotfile in ${dotfiles[@]}
do
	ln -sf ~/dotfiles/$dotfile ~/$dotfile 
done

