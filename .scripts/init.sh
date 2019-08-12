#!/bin/bash

cd ~/dotfiles
ln -s $(pwd)/dotfiles/.zshrc ~/.zshrc
ln -s $(pwd)/dotfiles/.vimrc ~/.vimrc
ln -s $(pwd)/dotfiles/.tmux.conf ~/.tmux.conf

