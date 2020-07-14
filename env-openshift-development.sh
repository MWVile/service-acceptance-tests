#!/usr/bin/env bash

source ./env-functions.sh

export_if_unset CORE_CLUSTER_DOMAIN apps.development.test.stp.hmlr.zone
export_if_unset INTERNAL_CLUSTER_DOMAIN apps.development.test.stp.hmlr.zone

export_if_unset CORE_NAMESPACE skeletonsxl
export_if_unset PRIVATE_NAMESPACE skeletonsxl
export_if_unset PUBLIC_NAMESPACE skeletonsxl

source ./env-openshift.sh
