#!/usr/bin/env bash
set -eu
export DEBIAN_FRONTEND=noninteractive

echo 'Installing task...'
sh -c "$(curl --location https://taskfile.dev/install.sh)" -- -d -b ./bin
