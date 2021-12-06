#!/bin/bash


cp $HOME/.emacs .
mkdir -p .emacs.d/init
cp $HOME/.emacs.d/init/init.el .emacs.d/init/
mkdir -p .doom.d
cp $HOME/.doom.d/* .doom.d
