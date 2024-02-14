#!/bin/bash

# Install all from Brewfile

brew bundle

# Enable special handling to prevent expansion to a
# literal '/tmp/backup/*' when no matches are found. 
shopt -s nullglob

FOLDERS=(*)
for folder in "${FOLDERS[@]}"; do
    [[ -d "$folder" ]] && stow "$folder"
done

# Unset shell option after use, if desired. Nullglob
# is unset by default.
shopt -u nullglob


