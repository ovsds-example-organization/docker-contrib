#!/usr/bin/env bash
set -eu
export DEBIAN_FRONTEND=noninteractive

echo 'Installing apt-utils...'
apt-get install --yes \
  apt-utils
