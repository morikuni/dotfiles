function git-newbranch -a base -a name
    if test -z "$base" -o -z "$name"
        echo "git-newbranch [base] [name]"
        return 1
    else
        git stash save
        git switch $base
        git pull
        git switch -c $name
        git stash pop
    end
end
