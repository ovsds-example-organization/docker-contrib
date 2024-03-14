#!/usr/bin/env bash
set -eu
export DEBIAN_FRONTEND=noninteractive
export PIP_ROOT_USER_ACTION=ignore

echo 'Installing poetry...'

python -m pip install 'poetry>=1.7.0,<1.8.0'
