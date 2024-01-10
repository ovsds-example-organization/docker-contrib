#!/usr/bin/env bash
set -eu
export DEBIAN_FRONTEND=noninteractive

echo 'Installing trivy...'

apt-get install --yes \
    apt-transport-https \
    gnupg \
    lsb-release

curl -fsSL https://aquasecurity.github.io/trivy-repo/deb/public.key | gpg --dearmor -o /usr/share/keyrings/trivy.gpg
echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] https://aquasecurity.github.io/trivy-repo/deb \
    $(lsb_release -sc) main" | tee -a /etc/apt/sources.list.d/trivy.list

apt-get update
apt-get install --yes \
    trivy
