#!/usr/bin/env bash
CURRENT=$(pwd)

# pull service
docker-compose \
  -f "$CURRENT/docker-compose-dev.yml" \
  pull
  
# start service
docker-compose -p message-broker \
  -f "$CURRENT/docker-compose-dev.yml" \
  up -d