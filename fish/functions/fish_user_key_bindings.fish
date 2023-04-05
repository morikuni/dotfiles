function fish_user_key_bindings
    bind \cd "printf '\033[01Guse `exit` to close session\n'"
    bind \cp "prevd; commandline -f execute"
    bind \cn "nextd; commandline -f execute"
end
