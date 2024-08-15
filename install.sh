#!/bin/bash

wd="$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null && pwd )"

ln -s "$wd/.zshrc" ~
ln -s "$wd/.vimrc" ~
ln -s "$wd/.wezterm.lua" ~
