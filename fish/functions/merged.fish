function merged -a cmd
    if [ "$cmd" = "apply" ]
        git branch --merged | grep -v (git symbolic-ref --short HEAD) | grep -v master | grep -v main |  xargs -I % git branch -d %
    else
        git branch --merged | grep -v (git symbolic-ref --short HEAD) | grep -v master | grep -v main
    end
end
