#!/usr/bin/env sh
set -e

envsubst '${PORT}' < /default.conf.template > /etc/nginx/conf.d/default.conf

exec "$@"