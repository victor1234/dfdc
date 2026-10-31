#!/usr/bin/env bash

set -euo pipefail

# Install mise
if [ ! -x "$HOME/.local/bin/mise" ]; then
  curl -fsSL https://mise.run | MISE_QUIET=1 sh
fi


# Install global tools
"$HOME"/.local/bin/mise install
