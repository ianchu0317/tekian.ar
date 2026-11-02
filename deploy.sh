#!/usr/bin/env bash
set -euo pipefail

SERVER="${TEKIAN_SERVER:-tekian-server}"
REMOTE_DIR="${TEKIAN_REMOTE_DIR:-~/tekian.ar}"

cd "$(dirname "$0")"

tar -czf - --exclude=.git --exclude=deploy.sh . \
  | ssh "$SERVER" "tar -xzf - -C $REMOTE_DIR && cd $REMOTE_DIR && docker compose up -d --build"
