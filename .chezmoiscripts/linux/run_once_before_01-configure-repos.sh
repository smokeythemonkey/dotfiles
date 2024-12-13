#!/usr/bin/env bash
# shellcheck disable=SC2312
set -e
LINE="-------------------------------------------"

export PATH="${HOME}/.local/bin:${HOME}/bin:${PATH}"

if command -v apt &>/dev/null; then
  echo "Debian based system found!"
  # Install Nala
  if command -v nala &>/dev/null; then
    echo "Nala is already installed. Skipping"
  else
    echo "Setting up Nala"
    curl https://gitlab.com/volian/volian-archive/-/raw/main/install-nala.sh | bash
    sudo apt install -t nala nala
  fi
  sudo nala fetch --auto -y --https-only --non-free
  sudo nala install --update -y curl wget git ca-certificates libfuse2 gnupg2

fi

echo $LINE

echo "Setting up flathub"
flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

echo $LINE

echo "Installing NF"
curl -fsSL https://raw.githubusercontent.com/getnf/getnf/main/install.sh | bash

getnf -i FiraCode FiraMono UbuntuMono UbuntuSans ZedMono

echo $LINE

echo "Adding eza repo"
wget -qO- https://raw.githubusercontent.com/eza-community/eza/main/deb.asc | sudo gpg --dearmor -o /etc/apt/keyrings/gierens.gpg
echo "deb [signed-by=/etc/apt/keyrings/gierens.gpg] http://deb.gierens.de stable main" | sudo tee /etc/apt/sources.list.d/gierens.list
sudo chmod 644 /etc/apt/keyrings/gierens.gpg /etc/apt/sources.list.d/gierens.list

echo "Adding alacritty ppa"
sudo add-apt-repository ppa:aslatter/ppa -y

echo "Adding syncthing ppa"
sudo curl -L -o /etc/apt/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg
echo "deb [signed-by=/etc/apt/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
echo "deb [signed-by=/etc/apt/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing candidate" | sudo tee /etc/apt/sources.list.d/syncthing.list

echo "Adding neovim ppa"
sudo add-apt-repository ppa:neovim-ppa/stable -y

echo "Adding fish ppa"
sudo apt-add-repository ppa:fish-shell/release-3 -y

echo $LINE
