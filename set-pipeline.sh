#!/bin/bash

ALIAS=${1:-lite}

PIPELINE_NAME="cities-service"

fly -t "${ALIAS}" sp -p "${PIPELINE_NAME}" -c ci/pipeline.yml -l "ci/credentials.yml"
