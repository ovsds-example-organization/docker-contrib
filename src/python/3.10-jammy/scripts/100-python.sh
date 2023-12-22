#!/usr/bin/env bash
set -eu
export DEBIAN_FRONTEND=noninteractive

echo 'Installing python...'

apt-get install --yes python3-minimal
ln -s /usr/bin/python3 /usr/bin/python
