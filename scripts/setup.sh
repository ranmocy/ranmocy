#!/bin/bash

git config --local core.hooksPath scripts/

if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install basictex imagemagick entr
    sudo tlmgr update --self
    sudo tlmgr install textpos biblatex
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    git clone https://github.com/ranmocy/fonts.git ~/.fonts
    sudo apt install texlive-full fontconfig
    fc-cache
    sudo mktexlsr
else
    echo "Unsupported operating system: $OSTYPE"
    exit 1
fi
