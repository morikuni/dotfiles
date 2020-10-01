# 安全に
alias cp "cp -i"
alias mv "mv -i"
if which rmtrash > /dev/null 2>&1
	alias rm "rmtrash"
end

# ENV
set -gx GOPATH ~/go
set -gx EDITOR vim
set -gx FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -g ""'

# PATH
set -gx fish_user_paths /usr/local/bin
set -gx fish_user_paths ~/bin $fish_user_paths
set -gx fish_user_paths $GOPATH/bin $fish_user_paths
switch (uname)
case Linux
	set -gx fish_user_paths /home/linuxbrew/.linuxbrew/bin $fish_user_paths
end

# gcloud
switch (uname)
case Darwin
	source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc
end

# direnv
eval (direnv hook fish)
