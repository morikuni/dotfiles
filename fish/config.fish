# 安全に
alias cp "cp -i"
alias mv "mv -i"
if which rm > /dev/null 2>&1
	alias rm "rmtrash"
end

# ENV
set -gx GOPATH ~/go
set -gx EDITOR vim

# PATH
set -gx fish_user_paths /usr/local/bin
set -gx fish_user_paths $GOPATH/bin $fish_user_paths
set -gx fish_user_paths ~/bin/google-cloud-sdk/bin/ $fish_user_paths
