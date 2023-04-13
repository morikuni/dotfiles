#!/bin/sh

#vim用ディレクトリの作成
mkdir ~/.vim
mkdir ~/.vim/bundle
mkdir ~/.vim/undo
mkdir ~/.vim/swap

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
.gitconfig
.gitignore
.ideavimrc
.tmux.conf
.zshrc
)
for dotfile in ${dotfiles[@]}
do
	ln -sf ~/dotfiles/$dotfile ~/$dotfile
done

mkdir ~/.config

#.configディレクトリに配置するもの
configfiles=(
fish
alacritty
karabiner
)
for configfile in ${configfiles[@]}
do
	ln -sf ~/dotfiles/$configfile ~/.config/
done

ln -sf ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/ ~/iCloud

sh ~/dotfiles/install.sh

if [ "$(uname)" == "Darwin" ]; then
    defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
fi
