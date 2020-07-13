#!/usr/bin/env bash

source ./env-openshift-development.sh

export_if_unset CORE_POSTGRES_HOST localhost
export_if_unset INTERNAL_POSTGRES_HOST localhost
export_if_unset INTERNAL_POSTGRES_PORT 15432
export_if_unset DB2_HOST localhost
export_if_unset RABBITMQ_HOST localhost

source ./env-openshift.sh
