#!/bin/bash

wd="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null && pwd )"

# Install zsh plugins
echo "Installing zsh plugins..."
mkdir ~/.zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting
git clone https://github.com/agkozak/zsh-z.git ~/.zsh/zsh-z
git clone https://github.com/sindresorhus/pure.git ~/.zsh/pure

# Create symlinks
echo "Creating symlinks..."
ln -s "$wd/.zshrc" ~
ln -s "$wd/.vimrc" ~
