function merged -a deploy
    if [ "$deploy" = "deploy" ]
        git branch --merged | grep -v (git symbolic-ref --short HEAD) | grep -v master | xargs -I % git branch -d %
    else
        git branch --merged | grep -v (git symbolic-ref --short HEAD) | grep -v master
    end
end
