#!/bin/bash
# build and spin up react app using Dockerfile and docker-compose
# You can use the --prod or --dev flags to spin up each environment
# if a flag isnt used it will default to dev

deploy_dev () {
    echo "Building DEV container" && sleep 3
    docker-compose -f docker-compose.yml up -d --build
}

deploy_prod () {
    echo "Building PROD container" && sleep 3
    docker-compose -f docker-compose.prod.yml up -d --build
}

clean_containers () {
    if [ $ENV="DEV" ]; then
        docker-compose -f docker-compose.yml down
    elif [ $ENV="PROD" ]; then
        docker-compose -f docker-compose.prod.yml down
    else
        echo "No compose env found"
        exit 1
    fi
}

# This is used to create flags/switches for
# your choice of which docker env you want to build out
# HELP
# getopts: usage: getopts optstring name [arg ...]
while getopts :dpc flag; do
    case "${flag}" in
        c|--clean)
        clean_containers
        ;;
        d|--dev)
          ENV="DEV"
          deploy_dev
          ;;
        p|--prod)
          ENV="PROD"
          deploy_prod
          ;;
        *)
          echo "ERROR: Invalid option" && sleep 1
          echo "Please choose an environment to build" && sleep 1
          echo "Choose -d for DEV or -p for PROD" && sleep 1
          exit 1
          ;;
    esac
done