#!/usr/bin/env bash
set -eu
export DEBIAN_FRONTEND=noninteractive
export PIP_ROOT_USER_ACTION=ignore

echo 'Installing cookiecutter...'

python -m pip install 'cookiecutter>=2.1.0,<2.2.0'
