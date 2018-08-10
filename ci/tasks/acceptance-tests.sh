#!/bin/bash
set -e
set -x
export CITY_SERVICE_PORT=80
echo "${CITY_SERVICE_URI}"
echo "${CITY_SERVICE_PORT}"
cd cities-repo/acceptance-tests
./gradlew test