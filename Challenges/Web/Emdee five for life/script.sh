#!/bin/sh

HOST=http://68.183.41.74:32434/

STRING=$(curl -s -c "c.txt" $HOST | grep string | cut -f 4 -d ">" | cut -f 1 -d "<" )

echo $STRING

HASH=$( echo $STRING | tr -d "\n" | md5sum | cut -d " " -f1 )

echo $HASH

curl -X POST -b "c.txt" -d "hash=$HASH" $HOST
