#!/bin/bash


mkdir -p .emacs.d/
mkdir -p .emacs.d/init-loader

cp $HOME/.emacs.d/init.el .emacs.d/
cp $HOME/.emacs.d/init-loader/*.el .emacs.d/init-loader/
