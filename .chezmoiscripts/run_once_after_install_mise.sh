#!/usr/bin/env bash

set -euo pipefail

# Install mise if needed
if [ ! -x "$HOME/.local/bin/mise" ]; then
  curl -fsSL https://mise.run | MISE_QUIET=1 sh

  # Install global tools
  "$HOME"/.local/bin/mise install
fi
