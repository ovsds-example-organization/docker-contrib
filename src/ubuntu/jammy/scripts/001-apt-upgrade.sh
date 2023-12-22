#!/usr/bin/env bash
set -eu
export DEBIAN_FRONTEND=noninteractive

echo 'Upgrading apt-get...'

apt-get full-upgrade --yes
