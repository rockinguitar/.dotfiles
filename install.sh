#!/bin/bash

# Install all from Brewfile

brew bundle

# Stow with verbose add -n to just simulate

stow alacritty git zsh -v
