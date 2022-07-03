brew install \
    trash \
    fish \
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
    mas \
    kubectl \
    ngrok \
    make

if [ "$(uname)" == "Darwin" ]; then
    brew install --cask \
        bettertouchtool \
        alfred \
        jetbrains-toolbox \
        homebrew/cask-fonts/font-fira-code \
        slack \
        fork \
        google-cloud-sdk \
        docker \
        paw \
        discord \
        stats \
        krisp \
        alacritty \
        karabiner-elements \
        bartender \
        1password/tap/1password-cli \
        google-drive \
        deepl \
        zoom \
        homebrew/cask-drivers/logitech-g-hub \
        dash \
        homebrew/cask-drivers/elgato-stream-deck

    # Translate Tab
    mas install 458887729
    # Kaleidoscope
    mas install 587512244
    # Moom
    mas install 419330170
    # Tweetbot
    mas install 1384080005
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
    # WiFi Explorer
    mas install 494803304
    # Affinity Designer
    mas install 824171161
    # Affinity Photo
    mas install 824183456
    # GoodNotes 5
    mas install 1444383602
    # Things 3
    mas install 904280696
    # 辞書 by 物書堂
    mas install 1380563956
    # Deliveries
    mas install 290986013
    # Noir
    mas install 1592844577
fi

