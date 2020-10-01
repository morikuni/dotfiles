$link_items = @(
'.vimrc',
'.vimrc.appearance',
'.vimrc.basic',
'.vimrc.bundle',
'.vimrc.edit',
'.vimrc.filetype',
'.vimrc.shortcut',
'.ideavimrc',
'.gitconfig',
'.gitignore'
)

foreach($item in $link_items) {
    if (!(Test-Path ~\$item)) {
        New-Item -Type SymbolicLink ~\$item -Value .\$item
    }
}

$link_items_os = @(
'.gitconfig'
)

foreach($item in $link_items_os) {
    $from = '.\' + $item + '.windows'
    $to   = '~\' + $item + '.os'
    if (!(Test-Path to)) {
        New-Item -Type SymbolicLink $to -Value $from
    }
}

$dirs = @(
'~/.vim',
'~/.vim/bundle',
'~/.vim/undo',
'~/.vim/swap'
)

foreach($dir in $dirs) {
    if (!(Test-Path $dir)) {
        mkdir $dir
    }
}

git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
