#!/usr/bin/env bash
set -eu
export DEBIAN_FRONTEND=noninteractive

apt-get install --yes \
    build-essential \
    git
