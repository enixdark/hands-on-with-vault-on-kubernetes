#!/bin/bash -
set -Eeuo pipefail

source "$(pwd)/scripts/__helpers.sh"

kubectl apply -f kubernetes/mysql.yaml

kubectl rollout status deployment/mysql