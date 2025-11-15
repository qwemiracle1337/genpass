#!/bin/bash
if [ $# -ne 1 ]; then
echo "используем только 1 параметр"
exit 1
fi
length=$1
password=$(cat /dev/urandom | tr -dc 'A-Za-z0-9' | head -c "$length")
echo "пароль: $password"

