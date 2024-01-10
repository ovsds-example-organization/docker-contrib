#!/usr/bin/env bash
set -eu
export DEBIAN_FRONTEND=noninteractive

echo 'Installing nvm...'

export NVM_VERSION=0.39.7
export NVM_DIR="${HOME}/.nvm"

curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/v${NVM_VERSION}/install.sh" | bash
source "${NVM_DIR}/nvm.sh"

echo 'Installing node...'

export NODE_VERSION=v21.5.0

nvm install ${NODE_VERSION}
nvm alias default ${NODE_VERSION}
nvm use default
nvm cache clear

npm config --location=global set shell bash
npm config --location=global set fund false
npm config --location=global set audit false
npm config --location=global set fetch-retries 3
npm config --location=global set update-notifier false
