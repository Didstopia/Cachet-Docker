#!/usr/bin/env bash
set -eo pipefail

[[ $DEBUG == true ]] && set -x

echo "Starting web server.."
nginx && sleep 5

echo "Continuing regular startup.."
bash /sbin/entrypoint.sh start
