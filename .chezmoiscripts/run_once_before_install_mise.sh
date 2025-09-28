#!/usr/bin/env bash

set -euo pipefail

# Install mise wihtout non-error output
curl https://mise.run/bash | MISE_QUIET=1 sh
