#!/usr/bin/env bash
set -eu
export DEBIAN_FRONTEND=noninteractive

echo 'Installing nano package...'

{
  echo ''
  echo 'EDITOR=nano'
} >> /root/.bashrc

{
  echo ''
  echo 'include "/usr/share/nano/*.nanorc"'
} >> /root/.nanorc

apt-get install --yes \
  nano
