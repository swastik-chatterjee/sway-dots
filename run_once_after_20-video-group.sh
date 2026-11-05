#!/usr/bin/env bash
# `light` needs the video group to change brightness without sudo.
# Log out and back in afterwards for it to take effect.
set -euo pipefail
id -nG "$USER" | tr ' ' '\n' | grep -qx video && exit 0
sudo usermod -aG video "$USER"
