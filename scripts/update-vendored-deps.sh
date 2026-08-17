#!/usr/bin/env bash
set -euo pipefail

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )"; cd ..; pwd )"

LODASH_SRC="$ROOT/node_modules/lodash/lodash.min.js"
TOUGH_COOKIE_SRC="$ROOT/node_modules/umd-tough-cookie/lib/umd-tough-cookie.js"

if [[ ! -f "$LODASH_SRC" ]]; then
  echo "Missing $LODASH_SRC. Run npm install first." >&2
  exit 1
fi

if [[ ! -f "$TOUGH_COOKIE_SRC" ]]; then
  echo "Missing $TOUGH_COOKIE_SRC. Run npm install first." >&2
  exit 1
fi

cp "$LODASH_SRC" "$ROOT/www/lodash.js"
cp "$TOUGH_COOKIE_SRC" "$ROOT/www/umd-tough-cookie.js"
