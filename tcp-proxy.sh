#!/usr/bin/env bash

echo "Running tcp"

if [ "$#" -ne 2 ]; then
    echo "usage: $(basename $0) host port"
    exit 1
fi

HOST="$1"
PORT="$2"

LISTEN_PORT=${LISTEN_PORT:-${PORT}}

echo "relay TCP/IP connections on :${LISTEN_PORT} to ${HOST}:${PORT}"
exec socat TCP-LISTEN:80,fork,reuseaddr TCP:${HOST}:${PORT}
