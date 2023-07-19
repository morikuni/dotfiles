function delete-merged-branches
    set merged_branches (git branch --merged main | string trim | string match -v "main")
    echo "以下のブランチがmainにマージされています:"
    for branch in $merged_branches
        echo $branch
    end
    echo "エンターキーを押すと、これらのブランチが削除されます。"

    read -l -P "削除を開始するにはエンターを押してください (Ctrl+Cでキャンセル): "
    if test $status -ne 0
        echo "操作がキャンセルされました。"
        return 1
    end

    for branch in $merged_branches
        git branch -d $branch
        echo $branch "を削除しました。"
    end
end
