#!/usr/bin/env bash

set -euo pipefail

# Install mise
curl https://mise.run | MISE_QUIET=1 sh

# Install global tools
"$HOME"/.local/bin/mise install
