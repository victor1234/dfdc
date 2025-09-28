#!/usr/bin/env bash

set -euo pipefail

# Set aliases
git config --global alias.st status
git config --global alias.co commit
git config --global alias.ch checkout

echo "Git configured"
