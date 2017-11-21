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
    printf '%s' (pwd)
    set_color normal

    echo
    printf $status_color
    printf '$ '
    set_color normal
end
