#!/usr/bin/env bash
set -eu
export DEBIAN_FRONTEND=noninteractive
export PIP_ROOT_USER_ACTION=ignore

echo 'Installing python...'

apt-get install --yes \
  software-properties-common
add-apt-repository ppa:deadsnakes/ppa -y

apt-get install --yes \
  python3.12 \
  python3.12-venv

ln -s /usr/bin/python3.12 /usr/bin/python

curl -sS https://bootstrap.pypa.io/get-pip.py | python3.12

python -m pip install --upgrade \
    pip \
    setuptools \
    wheel

mkdir --parents ~/.config/pip
{
  echo '[global]'
  echo 'retries = 3'
  echo 'disable-pip-version-check = True'
} >> ~/.config/pip/pip.conf
