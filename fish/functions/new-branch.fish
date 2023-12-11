function new-branch -a base -a name
    if test -z "$base" -o -z "$name"
        echo "git-newbranch [base] [name]"
        return 1
    end

    set -l stash_result (git stash save)
    git switch $base
    git pull
    git switch -c $name

    if string match -qr 'No local changes to save' -- $stash_result
        echo "No changes stashed."
    else
        git stash pop
    end
end
