#!/bin/bash


cp $HOME/.emacs .
if [[ $OS = OSX ]]; then
	cp -R $HOME/.emacs.d/ .emacs.d
else
	cp -R $HOME/.emacs.d/ .
fi
