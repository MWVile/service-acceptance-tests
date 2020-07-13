#!/usr/bin/env bash

source ./env-openshift-localrun.sh

oc -n "$CORE_NAMESPACE" port-forward "svc/$HELM_RELEASE-postgres" 5432 &
oc -n "$PRIVATE_NAMESPACE" port-forward "svc/$HELM_RELEASE-postgres" 15432:5432 &
oc -n "$CORE_NAMESPACE" port-forward "svc/$HELM_RELEASE-db2" 50000 &
oc -n "$PRIVATE_NAMESPACE" port-forward "svc/$HELM_RELEASE-rabbitmq" 5672 &

trap 'kill $(jobs -p)' SIGINT SIGTERM
wait
