#!/bin/sh

set -euo pipefail

DELETED="$(jq '.deleted' < "$GITHUB_EVENT_PATH")"
if [ "$DELETED" = "true" ]; then
  exit 78
fi
