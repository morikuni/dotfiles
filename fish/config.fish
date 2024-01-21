# ENV
set -gx GOPATH ~/go
set -gx EDITOR vim
set -gx FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -g ""'
set -gx LC_ALL ja_JP.UTF-8
set -gx LANG ja_JP.UTF-8

switch (uname)
case Linux
    eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
case Darwin
    eval (/opt/homebrew/bin/brew shellenv)
    source "$(brew --prefix)/share/google-cloud-sdk/path.fish.inc"
end


# PATH
fish_add_path ~/bin
fish_add_path $GOPATH/bin

# direnv
eval (direnv hook fish)

# 安全に
alias cp "cp -i"
alias mv "mv -i"
if which trash > /dev/null 2>&1
	alias rm "trash -F"
end

source /opt/homebrew/opt/asdf/libexec/asdf.fish
