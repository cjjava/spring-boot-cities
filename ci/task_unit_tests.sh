#!/bin/bash

export ROOT_FOLDER=$( pwd )
export REPO=cities-repo

SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

[[ -f "${SCRIPTS_DIR}/functions.sh" ]] && source "${SCRIPTS_DIR}/functions.sh" || \
    echo "No functions.sh found"

cd ${ROOT_FOLDER}/${REPO}
buildGradle
