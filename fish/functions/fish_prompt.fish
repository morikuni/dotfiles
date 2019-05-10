function fish_prompt
    if test $status -eq 0
        set status_color (set_color green)
    else
        set status_color (set_color red)
    end
	if not set -q VIRTUAL_ENV_DISABLE_PROMPT
        set -g VIRTUAL_ENV_DISABLE_PROMPT true
    end

    set_color magenta
    printf '[%s] ' (date +"%Y/%m/%d %H:%M:%S")

    set_color yellow
    printf '%s ' (pwd)
    set_color normal

    set branch (git symbolic-ref --short HEAD 2> /dev/null)
    if test -n "$branch"
        set_color cyan
        printf '<%s> ' $branch
        set_color normal
    end

    kubectl config get-contexts \
    | grep '*' \
    | read current name cluster authinfo namespace
    set name (echo -n "$name" | tr -d ' ')
    set namespace (echo -n "$namespace" | tr -d ' ')
    set_color green
    printf '%s.%s' $name $namespace
    set_color normal

    echo
    printf $status_color
    printf '$ '
    set_color normal
end
