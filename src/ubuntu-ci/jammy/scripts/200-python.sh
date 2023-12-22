#!/usr/bin/env bash
set -eu
export DEBIAN_FRONTEND=noninteractive
export PIP_ROOT_USER_ACTION=ignore

echo 'Installing python...'

apt-get install --yes \
  python3 \
  python3-pip \
  python3-venv \
  python3-wheel \
  python3-setuptools
ln -s /usr/bin/python3 /usr/bin/python

python -m pip install --upgrade pip
mkdir --parents ~/.config/pip
{
  echo '[global]'
  echo 'retries = 3'
  echo 'disable-pip-version-check = True'
} >> ~/.config/pip/pip.conf
