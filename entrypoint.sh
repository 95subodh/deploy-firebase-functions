#!/bin/sh
ls

cd functions; npm i

if [ -z "${FIREBASE_TOKEN}" ]; then
    echo "FIREBASE_TOKEN is missing"
    exit 1
fi


firebase deploy \
    --token ${FIREBASE_TOKEN} \
    --only functions,firestore:rules
