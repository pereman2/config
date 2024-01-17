#!/bin/bash

ln -s $(pwd)/antigen.zsh ~/.config/antigen.zsh -f
ln -s $(pwd)/.tmux.conf ~/ -f
ln -s $(pwd)/.zshrc ~/ -f
ln -s $(pwd)/nvim ~/.config/nvim -f
ln -s $(pwd)/.editorconfig ~/ -f

ln -s $(pwd)/ceph/setcephconfs /usr/bin/ -f

# ln -s $(pwd)/.config/helix ~/.config/helix
# ln -s $(pwd)/alacritty ~/.config/alacritty
# ln -s $(pwd)/i3 ~/.config/i3
