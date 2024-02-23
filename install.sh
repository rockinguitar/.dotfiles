#!/bin/bash

# Install all from Brewfile

brew bundle

# Configure brew to update itself all 12 hours

brew  autoupdate start 43200 --upgrade --cleanup --immediate --sudo

# Stow with verbose add -n to just simulate

stow alacritty git zsh -v
