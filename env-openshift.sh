#!/usr/bin/env bash

source ./env-functions.sh

assert_in_environment HELM_RELEASE
assert_in_environment CORE_CLUSTER_DOMAIN
assert_in_environment INTERNAL_CLUSTER_DOMAIN
assert_in_environment CORE_NAMESPACE
assert_in_environment PRIVATE_NAMESPACE
assert_in_environment PUBLIC_NAMESPACE

export_if_unset FLASK_SKELETONXL_API_URL "http://${HELM_RELEASE}-flask-skeletonxl-api-${CORE_NAMESPACE}.${CORE_CLUSTER_DOMAIN}"
export_if_unset FLASK_SKELETONXL_UI_URL "http://${HELM_RELEASE}-flask-skeletonxl-ui-${PUBLIC_NAMESPACE}.${INTERNAL_CLUSTER_DOMAIN}"
export_if_unset KOMBU_SKELETONXL_CLIENT_URL "http://${HELM_RELEASE}-kombu-skeletonxl-client-${PRIVATE_NAMESPACE}.${INTERNAL_CLUSTER_DOMAIN}"
export_if_unset SPRINGBOOT_JAXRS_SKELETONXL_API_URL "http://${HELM_RELEASE}-springboot-jaxrs-skeletonxl-api-${CORE_NAMESPACE}.${CORE_CLUSTER_DOMAIN}/api"
export_if_unset SPRINGBOOT_MVC_SKELETONXL_API_URL "http://${HELM_RELEASE}-springboot-mvc-skeletonxl-api-${PRIVATE_NAMESPACE}.${INTERNAL_CLUSTER_DOMAIN}"

export_if_unset CORE_POSTGRES_HOST "${HELM_RELEASE}-postgres.${CORE_NAMESPACE}.svc"
export_if_unset CORE_POSTGRES_USERNAME postgres
export_if_unset CORE_POSTGRES_PASSWORD postgres

export_if_unset INTERNAL_POSTGRES_HOST "${HELM_RELEASE}-postgres.${PRIVATE_NAMESPACE}.svc"
export_if_unset INTERNAL_POSTGRES_USERNAME postgres
export_if_unset INTERNAL_POSTGRES_PASSWORD postgres

export_if_unset DB2_HOST "${HELM_RELEASE}-db2.${CORE_NAMESPACE}.svc"
export_if_unset DB2_PORT 50000
export_if_unset DB2_DBNAME CORE_DB
export_if_unset DB2_USER db2inst1
export_if_unset DB2_PASSWORD db2inst1-pwd

export_if_unset RABBITMQ_HOST "${HELM_RELEASE}-rabbitmq.${PRIVATE_NAMESPACE}.svc"
export_if_unset RABBITMQ_PORT 5672
export_if_unset RABBITMQ_API_URL "https://${HELM_RELEASE}-rabbitmq-${PRIVATE_NAMESPACE}.${INTERNAL_CLUSTER_DOMAIN}"
