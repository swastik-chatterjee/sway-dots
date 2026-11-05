#!/usr/bin/env bash
# Installs Fira Code Nerd Font once, unless it's already installed.
set -euo pipefail
fc-list | grep -qi "FiraCode Nerd Font" && exit 0
mkdir -p ~/.local/share/fonts
curl -fL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.tar.xz \
  | tar -xJ -C ~/.local/share/fonts
fc-cache -f
