#!/usr/bin/env bash

# Backs up and restores tilix settings 

set -e

if [[ $1 == 'backup' ]]; then
  dconf dump '/com/gexperts/Tilix/' > tilix-settings.dconf
  cp ~/.tmux.conf ./
  cp ~/.zshrc ./
  cp ~/.zsh_plugins.txt ./
  cp -r ~/.config/nvim/ ./
  rm -rf ./nvim/plugin/
  echo "backup done"
  exit 0
fi
if [[ $1 == 'restore' ]]; then
  dconf load '/com/gexperts/Tilix/' < tilix-settings.dconf
  cp ./.tmux.conf ~/
  cp ./.zshrc ~/
  cp ./.zsh_plugins.txt ~/
  echo "restore done"
  exit 0
fi

echo "parameter 0: [backup|restore]"

