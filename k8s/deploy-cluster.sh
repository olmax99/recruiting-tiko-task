#!/usr/bin/env bash
set -e
##
## This script builds all necessary images
## and starts the Kuberntes KinD Cluster
##

# pull basic images
docker pull busybox:latest
docker pull nginx:latest

# build tiko-k8s docker image
docker build cluster/. \
  --platform=linux/amd64 \
  -t tiko-k8s:latest

## start the tiko-k8s container
docker run --rm \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --network=host \
  --platform=linux/amd64 \
  tiko-k8s:latest

## Copy kubeconfig from control-plane
docker cp tiko-control-plane:/etc/kubernetes/admin.conf ./apps/kubeconfig
cp ./apps/kubeconfig ./infra/kubeconfig

## Import basic images to KinD
docker run \
  --rm \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --platform=linux/amd64 \
  --entrypoint="bash" \
  tiko-k8s:latest -c "kind load docker-image busybox:latest --name tiko && kind load docker-image nginx:latest --name tiko"

# Build tiko-infra
docker build infra/. \
  --platform=linux/amd64 \
  -t tiko-infra:latest

## Setup tiko-infra
docker run \
  --rm \
  --net=kind \
  --name=infra \
  --platform=linux/amd64 \
  tiko-infra:latest

## Update etc/hosts to access ingress
cat << EOF
###################
### Requesting sudo...
### Updating etc/hosts to access KinD ingress
### Check this request at deploy-apps.sh
###################
EOF

sudo -- bash -c '\
echo "127.0.0.1 prometheus.tiko" >> /etc/hosts && \
echo "127.0.0.1 web.tiko" >> /etc/hosts \
'

exit