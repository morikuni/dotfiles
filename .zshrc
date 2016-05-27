export LANG=ja_JP.UTF-8

#.zshrc.localがあれば読み込む
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

PROMPT="
[%F{magenta}%*%f] %F{yellow}%n%f at %F{green}%M%f in %F{cyan}%~%f
%(?,%F{green},%F{red})%#%f "
SPROMPT="もしかして: %r    [(y)es, (n)o, (a)bort, (e)xit] > "

#履歴ファイル
HISTFILE=~/.zsh_history
#メモリ上に載せる履歴数
HISTSIZE=10000
#ファイルに保存する履歴数
SAVEHIST=100000
#zsh間で履歴を同期
setopt share_history
#直前と同じ履歴は保存しない
setopt hist_ignore_dups
#履歴に時間も記録
setopt extended_history

#ビープ音無効
setopt no_beep

#Ctrl+Dで終了しないように
setopt ignore_eof

#コマンド名の間違いを指摘
setopt correct

#homebrewの補完
if [ -e /usr/local/share/zsh-completions ]; then
	fpath=(/usr/local/share/zsh-completions $fpath)
fi
#補完を有効に
autoload -U compinit
compinit
#Shift-Tabで逆方向に補完
bindkey "^[[Z" reverse-menu-complete
#補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
#カーソルで候補を選択
zstyle ':completion:*:default' menu select=1
#globを展開しないで補完
setopt glob_complete
#履歴から補完
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

#"/"を単語区切りとする
WORDCHARS="*?_-.[]~=&;!#$%^(){}<>"

#cd履歴をスタックにpushする
setopt auto_pushd
#重複するディレクトリはpushしない
setopt pushd_ignore_dups

#ls等に色付け
export CLICOLOR=true

#Ctrl+vでvimでコマンドを編集できるように
EDITOR="vim"
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^v' edit-command-line
#emacsライクキーバインド(viだとノーマルモードに入った後で編集できなくなる)
bindkey -e

#安全に
alias cp="cp -i"
alias mv="mv -i"
if [ -x "`which rmtrash 2>/dev/null`" ]; then
	alias rm="rmtrash"
fi

#Ctrl-zでfgを実行
fancy-ctrl-z () {
  if [[ $#BUFFER -eq 0 ]]; then
    BUFFER="fg"
    zle accept-line
  else
    zle push-input
    zle clear-screen
  fi
}
zle -N fancy-ctrl-z
bindkey '^Z' fancy-ctrl-z

#コマンドを実行した時にプロンプトを更新(表示時間を更新)
re-prompt() {
    zle .reset-prompt
    zle .accept-line
}
zle -N accept-line re-prompt

#/usr/local/binにパスを通す
path=(/usr/local/bin(N-/) $path)

#Cargoにパスを通す
path=(~/.cargo/bin $path)

#GOPATHの設定
export GOPATH=~/go
path=($GOPATH/bin $path)

#Stackにパスを通す
path=(~/.local/bin $path)

#CPANの設定
path=(~/perl5/bin $path)
export PERL5LIB=~/perl5/lib/perl5
export PERL_LOCAL_LIB_ROOT=~/perl5
export PERL_MB_OPT="--install_base \"~/perl5\""
export PERL_MM_OPT="INSTALL_BASE=~/perl5"

#anyenv
path=(~/.anyenv/bin $path)
eval "$(anyenv init - zsh)"

#brewで入れたC Libraryのパス
export LD_LIBRARY_PATH=(`brew --prefix`/lib $LD_LIBRARY_PATH)
export C_INCLUDE_PATH=(`brew --prefix`/include $C_INCLUDE_PATH)

# z.sh
. `brew --prefix`/etc/profile.d/z.sh
