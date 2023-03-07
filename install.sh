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
    asdf \
    make

if [ "$(uname)" == "Darwin" ]; then
    brew install --cask \
        bettertouchtool \
        alfred \
        jetbrains-toolbox \
        font-plemol-jp-nf \
        slack \
        fork \
        google-cloud-sdk \
        docker \
        paw \
        discord \
        krisp \
        alacritty \
        karabiner-elements \
        bartender \
        1password \
        1password/tap/1password-cli \
        google-drive \
        deepl \
        zoom \
        homebrew/cask-drivers/logitech-g-hub \
        dash \
        brave-browser \
        homebrew/cask-drivers/elgato-stream-deck \
        jump-desktop-connect \
        readdle-spark \
        loopback \
        atok \
        adguard \
        dash \
        ganache

    # Kaleidoscope
    mas install 587512244
    # Moom
    mas install 419330170
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
    # Line
    mas install 539883307
    # Vinegar
    mas install 1591303229
    # Baking Soda
    mas install 1601151613
    # Plain Text Editor
    mas install 1572202501
    # Twitter
    mas install 1482454543
    # Reeder5
    mas install 1529448980
fi

