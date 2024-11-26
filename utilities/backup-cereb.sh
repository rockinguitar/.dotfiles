#!/bin/bash
# Script for backing up the cerebrum-vault to github

# Stop script on error
set -e
  
CEREBRUMPATH=~/Documents/Cerebrum-Vault
GITHUBCEREBPATH=~/Repos/cerebrum-vault/
  
cd $GITHUBCEREBPATH
shopt -s extglob
rm -r !(.gitignore|.git)
cd $CEREBRUMPATH
cp -r . $GITHUBCEREBPATH
cd -
  
if [[ `git status --porcelain` ]]; then
  # Changes
  git add .
  git commit -m "Backup on $(date)"
  git push
fi
