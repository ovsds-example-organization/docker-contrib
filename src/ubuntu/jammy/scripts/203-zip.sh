#!/usr/bin/env bash
set -eu
export DEBIAN_FRONTEND=noninteractive

echo 'Installing zip and unzip packages...'

apt-get install --yes \
  zip \
  unzip
