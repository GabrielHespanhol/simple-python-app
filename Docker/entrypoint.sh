#!/bin/sh

PORT="${WEB_PORT:-5000}"
WORKERS="${WEB_WORKERS:-2}"

echo "[ENTRYPOINT] Target port: $PORT"
echo "[ENTRYPOINT] Number of workers: $WORKERS"

exec gunicorn --bind "0.0.0.0:$PORT" --workers "$WORKERS" app:app