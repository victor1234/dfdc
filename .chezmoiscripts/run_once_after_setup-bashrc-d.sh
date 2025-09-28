#!/usr/bin/env bash

set -euo pipefail

BASHRC_FILE="$HOME/.bashrc"
COMMENT="# Load .bashrc.d/*.sh - added by chezmoi on $(date '+%Y-%m-%d %H:%M:%S')"
BASHRC_LINE="for file in ~/.bashrc.d/*.sh; do [ -r \"\$file\" ] && source \"\$file\"; done"

if grep -q "$BASHRC_LINE" "$BASHRC_FILE" 2>/dev/null; then
    echo ".bashrc.d support already exists"
else
    {
        echo ""
        echo "$COMMENT"
        echo "$BASHRC_LINE"
    } >> "$BASHRC_FILE"
    echo ".bashrc.d support added"
fi
