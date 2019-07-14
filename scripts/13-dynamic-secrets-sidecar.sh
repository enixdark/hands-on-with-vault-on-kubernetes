#!/bin/bash -
set -Eeuo pipefail

source "$(pwd)/scripts/__helpers.sh"

kubectl apply -f kubernetes/exampleapp-database-sidecar.yaml

kubectl rollout status deployment/exampleapp-database-sidecar