function delete-merged-branches
    # Merged branches that are candidates for deletion
    set merged_branches (git branch --merged main | string trim | string match -v "main" | string match -v "* main")

    # Remaining branches that are not merged into main
    set remaining_branches (git branch --no-merged main | string trim | string match -v "main" | string match -v "* main")

    if test (count $merged_branches) -eq 0
        echo "There are no branches to delete."
    else
        echo "The following branches have been merged into main and can be deleted:"
        for branch in $merged_branches
            echo -e "\033[32m$branch\033[0m"
        end
    end

    if test (count $remaining_branches) -eq 0
        echo "There are no remaining branches."
    else
        echo "The following branches have not been merged into main and will remain:"
        for branch in $remaining_branches
            echo -e "\033[33m$branch\033[0m"
        end
    end

    if test (count $merged_branches) -eq 0
        return 1
    end

    read -l -P "Press enter to start deletion of merged branches (Ctrl+C to cancel): "
    if test $status -ne 0
        echo "Operation has been cancelled."
        return 1
    end

    for branch in $merged_branches
        git branch -d $branch
        echo $branch "has been deleted."
    end
end
