#!/usr/bin/env bash

# start service
docker-compose -p message-broker \
  -f "./docker-compose-dev.yml" \
  down