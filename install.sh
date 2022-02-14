brew install \
    fish \
    rmtrash \
    tmux \
    fzf \
    mas \
    git \
    go \
    vim \
    ag \
    jq \
    direnv \
    yarn \
    make

if [ "$(uname)" == "Darwin" ]; then
    brew install --cask \
        bettertouchtool \
        alfred \
        jetbrains-toolbox \
        dropbox \
        homebrew/cask-fonts/font-fira-code \
        kindle \
        slack \
        fork \
        iterm2 \
        google-cloud-sdk \
        docker \
        paw \
        jasper \
        discord \
        stats \
        krisp \
        android-studio \
        homebrew/cask-drivers/elgato-stream-deck

    # Translate Tab
    mas install 458887729
    # Kaleidoscope
    mas install 587512244
    # Moom
    mas install 419330170
    # 1Password 7
    mas install 1333542190
    # Tweetbot
    mas install 557168941
    # Fantastical 2
    mas install 975937182
    # Soulver
    mas install 413965349
    # Yoink
    mas install 457622435
    # PopClip
    mas install 445189367
    # Spark
    mas install 1176895641
fi

