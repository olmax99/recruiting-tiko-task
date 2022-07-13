#!/usr/bin/env bash
set -e
##
## This script builds the necessary image
## to deploy the applications configured
## inside install.sh
## 
## --
## In our review, we expect this script
## to be a one-time run, where it will
## deploy everything to the cluster.
## 
## --
## For your development, it's up to you
## to decide how to use it.
##

# Build tiko-apps
docker build apps/. \
  --platform=linux/amd64 \
  -t tiko-apps:latest

## Setup tiko-apps
docker run \
  --rm \
  --net=kind \
  --name=apps \
  -dt \
  --platform=linux/amd64 \
  tiko-apps:latest
