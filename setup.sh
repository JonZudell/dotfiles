#!/usr/bin/env bash

apt-get update && apt-get -y install build-essential procps curl file git
cp ~/dotfiles/.gitignore ~/.gitignore

bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

/home/linuxbrew/.linuxbrew/bin/brew shellenv >> ~/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew bundle --file ~/dotfiles/Brewfile
