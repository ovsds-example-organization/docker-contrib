#!/usr/bin/env bash
set -euo pipefail

# expected env variables:
GITHUB_REPOSITORY=${GITHUB_REPOSITORY}

repository_name=$(basename "${GITHUB_REPOSITORY}")
git config --global --add safe.directory "/__w/${repository_name}/${repository_name}"
