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
    ngrok \
    asdf \
    make

if [ "$(uname)" == "Darwin" ]; then
    brew install --cask \
        bettertouchtool \
        alfred \
        jetbrains-toolbox \
        homebrew/cask-fonts/font-plemol-jp-nf \
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
        readdle-spark \
        loopback \
        atok \
        adguard \
        cleanshot \
        atok \
        contexts \
        textsniper \
        caldigit-docking-utility

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
    # Snippety
    mas install 1530751461
    # Deliveries
    mas install 290986013
    # DaisyDisk
    mas install 411643860
    # Cardhop
    mas install 1290358394
fi

