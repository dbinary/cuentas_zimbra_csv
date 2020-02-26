#!/bin/bash

FILE=$1

while IFS= read -r line
do
    PASS=$(openssl rand -base64 12)
    echo "${line}"|awk -F"," -v pass=${PASS} '{printf("ca %s %s cn \"%s %s\" displayName \"%s %s\" givenName \"%s\" sn \"%s\"\n",$3,pass,$1,$2,$1,$2,$1,$2)}'
done < ${FILE}
