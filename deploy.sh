#!/usr/bin/env bash
set -euo pipefail

SERVER="${TEKIAN_SERVER:-tekian-server}"
REMOTE_DIR="${TEKIAN_REMOTE_DIR:-~/tekian.ar}"
BUILD=""

if [ "${1:-}" = "--build" ]; then
  BUILD="--build"
fi

cd "$(dirname "$0")"

tar -czf - --exclude=.git --exclude=deploy.sh . \
  | ssh "$SERVER" "tar -xzf - -C $REMOTE_DIR && cd $REMOTE_DIR && docker compose up -d $BUILD"
