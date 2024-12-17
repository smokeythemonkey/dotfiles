#!/usr/bin/env bash
# shellcheck disable=SC2312
set -e
LINE="-------------------------------------------"

echo "Installing atuin"
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh

echo $LINE

echo "Installing mise"
curl https://mise.run | sh
mise install

echo $LINE

echo "Installing fisher"
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

echo $LINE
