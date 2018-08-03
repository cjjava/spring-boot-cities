#!/bin/bash
set -e
set -x

export ROOT_FOLDER=$( pwd )
export REPO=cities-repo

GRADLE_HOME="${HOME}/.gradle"
GRADLE_CACHE="${ROOT_FOLDER}/gradle"

echo "Generating symbolic links for caches"

[[ -d "${GRADLE_CACHE}" && ! -d "${GRADLE_HOME}" ]] && ln -s "${GRADLE_CACHE}" "${GRADLE_HOME}"

SCRIPTS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

[[ -f "${SCRIPTS_DIR}/functions.sh" ]] && source "${SCRIPTS_DIR}/functions.sh" || \
    echo "No functions.sh found"


cd ${ROOT_FOLDER}/${REPO}
buildGradle