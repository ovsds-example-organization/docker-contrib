#!/usr/bin/env bash
set -euo pipefail

# expected env variables:
GH_TOKEN=${GH_TOKEN}  # used by gh cli

version=$(gh release list --exclude-drafts --exclude-pre-releases | awk '$2 == "Latest" { print $3 }')

echo "Latest version is $version" >&2
echo "$version"
