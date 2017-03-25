#!/usr/bin/env bash

c=0
retries=30
echo "Stalling for Mysql"
while ! nc -z mysql 3306
do
    ((c++)) && ((c==retries)) && break
    echo -n .
    sleep 1;
done