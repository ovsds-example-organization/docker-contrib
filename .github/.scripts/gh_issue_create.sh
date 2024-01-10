#!/usr/bin/env bash
set -euo pipefail

# expected env variables:
TITLE=${TITLE}
BODY=${BODY}
PROJECT=${PROJECT:-""}
GH_TOKEN=${GH_TOKEN}  # used by gh cli

gh issue create \
    --title "${TITLE}" \
    --body "${BODY}"
