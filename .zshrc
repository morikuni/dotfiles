export LANG=ja_JP.UTF-8

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