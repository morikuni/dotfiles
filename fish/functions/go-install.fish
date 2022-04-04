function go-install -a goversion
    if [ "$goversion" = "" ]
        echo "go-install [version]"
        return 1
    end

    echo "installing go$goversion..."
    go install golang.org/dl/go$goversion@latest
    go$goversion download
end
