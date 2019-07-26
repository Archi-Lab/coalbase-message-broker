#!/usr/bin/env bash

# pull service
docker-compose \
  -f "./docker-compose-dev.yml" \
  pull
  
# start service
docker-compose -p message-broker \
  -f "./docker-compose-dev.yml" \
  up -d