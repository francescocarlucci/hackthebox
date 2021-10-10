#!/bin/sh

HOST=http://188.166.173.208:31155/api/submit

curl -X POST -H "Content-Type: application/json" -d @payload.json $HOST
