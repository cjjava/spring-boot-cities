#!/bin/bash

ALIAS=${1:-lite}

PIPELINE_NAME="cities-service"

fly -t "${ALIAS}" sp -p "${PIPELINE_NAME}" -c pipeline.yml -l "credentials.yml"
fly -t "${ALIAS}" up -p "${PIPELINE_NAME}"
fly -t "${ALIAS}" trigger-job -j ${PIPELINE_NAME}/run-acceptance-tests -w