#!/usr/bin/env bash

set -euo pipefail

# Install mise
curl https://mise.run/bash | MISE_QUIET=1 sh

# Remove activation line
sed -i '\|# added by https://mise.run/bash|d' "$HOME/.bashrc"

# Install global tools
"$HOME"/.local/bin/mise install
