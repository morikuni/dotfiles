# ENV
set -gx GOPATH ~/go
set -gx EDITOR vim
set -gx FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -g ""'

switch (uname)
case Linux
    eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
case Darwin
    eval (/opt/homebrew/bin/brew shellenv)
	source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc
end


# PATH
set -gx PATH ~/bin $PATH
set -gx PATH $GOPATH/bin $PATH

# direnv
eval (direnv hook fish)

# 安全に
alias cp "cp -i"
alias mv "mv -i"
if which trash > /dev/null 2>&1
	alias rm "trash -F"
end

