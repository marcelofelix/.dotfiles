#!/bin/bash

if [ ! -x /usr/local/bin/ctags ]; then
    brew install ctags
fi

if [ ! -x /usr/local/bin/ag ]; then
    brew install the_silver_searcher
fi

if [ ! -d ~/.nvm ]; then
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
fi
