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
'.gitconfig',
'.tmuc.conf'
)

foreach($item in $link_items_os) {
    $from = './' + $item + '.windows'
    $to   = '~/' + $item + '.os'
    if (!(Test-Path $to)) {
        if (Test-Path $from) {
            New-Item -Type SymbolicLink $to -Value $from
        } else {
            New-Item -Type File $to
        }
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

$wsl_home = $(wsl wslpath -w ~)

# To share ssh-settings
if (!(Test-Path ($wsl_home+'/.ssh'))) {
    mkdir ($wsl_home+'/.ssh')
}
cp '~/.ssh/id_rsa' ($wsl_home+'/.ssh/id_rsa')
cp '~/.ssh/id_rsa.pub' ($wsl_home+'/.ssh/id_rsa.pub')
