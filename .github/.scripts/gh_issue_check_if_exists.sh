#!/usr/bin/env bash
set -euo pipefail

# expected env variables:
SEARCH_QUERY=${SEARCH_QUERY:-""}
GH_TOKEN=${GH_TOKEN}  # used by gh cli


issues=$(gh issue list --state open --search "${SEARCH_QUERY}" --json id)
if [[ $issues == "[]" ]]; then
    echo "false"
else
    echo "true"
fi
