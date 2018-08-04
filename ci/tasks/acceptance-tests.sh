#!/bin/bash
set -e
set -x
echo "${CITY_SERVICE_URI}"
echo "${CITY_SERVICE_PORT}"
cd repo/acceptance-tests
./gradlew test