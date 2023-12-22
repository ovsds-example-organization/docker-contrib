#!/usr/bin/env bash
set -eu
export DEBIAN_FRONTEND=noninteractive

echo 'Installing network packages...'

apt-get install --yes \
  ca-certificates \
  curl
