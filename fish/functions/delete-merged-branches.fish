function delete-merged-branches
    set merged_branches (git branch --merged main | string trim | string match -v "main" | string match -v "* main")

    if test (count $merged_branches) -eq 0
        echo "There are no branches to delete."
        return 1
    end

    echo "The following branches have been merged into main:"
    for branch in $merged_branches
        echo -e "\033[32m$branch\033[0m"
    end

    read -l -P "Press enter to start deletion (Ctrl+C to cancel): "
    if test $status -ne 0
        echo "Operation has been cancelled."
        return 1
    end

    for branch in $merged_branches
        git branch -d $branch
        echo $branch "has been deleted."
    end
end
