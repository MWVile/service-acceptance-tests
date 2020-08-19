#!/bin/bash
source ./env-functions.sh

export_if_unset FLASK_SKELETONXL_API_URL "http://flask-skeletonxl-api:8080"
export_if_unset FLASK_SKELETONXL_UI_URL "https://flask-skeletonxl-ui:8080"
export_if_unset SPRINGBOOT_JAXRS_SKELETONXL_API_URL "http://springboot-jaxrs-skeletonxl-service:8080"
export_if_unset SPRINGBOOT_MVC_SKELETONXL_API_URL "http://springboot-mvc-skeletonxl-api:8080"
