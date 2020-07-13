#!/usr/bin/env bash

function assert_in_environment() {
  VAR_NAME="$1"
  if [[ -z "${!VAR_NAME}" ]]; then
    echo "Error: the ${VAR_NAME} environment variable must be set." >&2
    exit 1
  fi
}

function export_if_unset() {
  VAR_NAME="$1"
  VAR_VALUE="$2"

  if [[ -z "${!VAR_NAME}" ]]; then
    VAR_ASSIGNMENT="${VAR_NAME}=${VAR_VALUE}"
    echo "${VAR_ASSIGNMENT}"
    export ${VAR_ASSIGNMENT}
  else
    echo "${VAR_NAME}=${!VAR_NAME}"
  fi
}
