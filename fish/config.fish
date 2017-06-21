# 安全に
alias cp "cp -i"
alias mv "mv -i"
if which rm > /dev/null 2>&1
	alias rm "rmtrash"
end

# ENV
set -U GOPATH ~/go

# PATH
set -U fish_user_paths /usr/local/bin
set -U fish_user_paths $GOPATH/bin $fish_user_paths
