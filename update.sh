#!/bin/bash

# Update zsh modules
echo "Updating zsh modules..."
find $HOME/.zsh -name ".git" -type d | xargs -P10 -I{} git --git-dir={} pull
