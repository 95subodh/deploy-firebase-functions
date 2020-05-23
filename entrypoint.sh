#!/bin/sh

if [ -z "${FIREBASE_TOKEN}" ]; then
    echo "FIREBASE_TOKEN is missing"
    exit 1
fi

cd functions; npm i

firebase deploy \
    --token ${FIREBASE_TOKEN} \
    --only functions
