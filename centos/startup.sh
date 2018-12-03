#!/usr/bin/env bash

USER_FILE="/brook-web/static/json/user.json"

if [ -s "$USER_FILE" ]; then
 echo "[i] brook-web user.json file already present, skipping creation"
else
  USER="$USER"
  if [ "$USER" = "" ]; then
    USER="admin"
    echo "[i] brook-web username: $USER"
  fi

  PASSWORD="$PASSWORD"
  if [ "$PASSWORD" = "" ]; then
    PASSWORD="admin"
    echo "[i] brook-web Password: $PASSWORD"
  fi
cat << EOF > $USER_FILE
{"user": {"username": "$USER", "password": "$PASSWORD"}}
EOF

fi

PORT="$PORT"
if [ "$PORT" = "" ]; then
  PORT="5000"
  echo "[i] brook-web web port: $PORT"
fi

exec /usr/bin/python /brook-web/brook-web.py $PORT

