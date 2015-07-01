#!/bin/sh

#vim用ディレクトリの作成
mkdir ~/.vim
mkdir ~/.vim/bundle
mkdir ~/.vim/undo
mkdir ~/.vim/swap

#dotファイルのシンボリックリンクを作成
dotfiles=(
.vimrc
.vimrc.basic 
.vimrc.appearance
.vimrc.edit
.vimrc.bundle
.vimrc.shortcut
.vimrc.filetype
.tmux.conf
.zshrc
.ctags
)
for dotfile in ${dotfiles[@]}
do
	ln -sf ~/dotfiles/$dotfile ~/$dotfile
done

#NeoBundleをインストール
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
