#!/bin/sh
set -e

# Allow overriding the exact playwright package/version via env if needed
PLAYWRIGHT_PACKAGE=${PLAYWRIGHT_PACKAGE:-playwright@1.56.1}

exec npx -y "$PLAYWRIGHT_PACKAGE" run-server "$@"
