#!/bin/bash

NS=${1:-prod}

# reduce kapp log verbosity by polling less aggressively
DEPLOY_FLAGS="--wait-check-interval=5s"

knot8 set <vendor/kdemo/app.yaml --from=${NS}/values.yaml | kapp deploy -c -y -a kdemo -n ${NS} -f - $DEPLOY_FLAGS

trap 'kill $(jobs -p)' EXIT

kubectl proxy &
sleep 2

curl http://localhost:8001/api/v1/namespaces/${NS}/services/kdemo/proxy/
