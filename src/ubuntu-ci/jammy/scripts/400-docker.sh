#!/usr/bin/env bash
set -eu
export DEBIAN_FRONTEND=noninteractive

echo 'Installing docker packages...'

apt-get install --yes \
  gnupg \
  lsb-release

mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

apt-get update
apt-get install --yes \
  docker-ce \
  docker-ce-cli \
  containerd.io \
  docker-compose-plugin
