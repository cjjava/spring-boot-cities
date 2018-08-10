#!/usr/bin/env bash
function buildGradle() {
    ./gradlew build
    cp build/libs/cities-service.jar ${ROOT_FOLDER}/cities-service-build/build/libs/
}

function buildMaven() {
    ./mvnw clean package
}


function build() {
    local projectType="${1}"

    if [[ ${projectType} == "MAVEN" ]]; then
        buildMaven
    else
        buildGradle
    fi
}