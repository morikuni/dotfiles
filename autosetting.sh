#!/bin/sh

#vim用ディレクトリの作成
mkdir ~/.vim
mkdir ~/.vim/bundle
mkdir ~/.vim/undo
mkdir ~/.vim/swap
ln -sf ~/dotfiles/dict ~/.vim/

#NeoBundleをインストール
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

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

#.configディレクトリに配置するもの
configfiles=(
fish/functions/fish_prompt.fish
fish/functions/fish_user_key_bindings.fish
fish/config.fish
)
for configfile in ${configfiles[@]}
do
	ln -sf ~/dotfiles/$configfile ~/.config/$configfile
done

sh ~/dotfiles/install.sh
