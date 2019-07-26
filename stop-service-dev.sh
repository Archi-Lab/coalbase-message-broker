#!/usr/bin/env bash
CURRENT=$(pwd)

# start service
docker-compose -p message-broker \
  -f "$CURRENT/docker-compose-dev.yml" \
  down