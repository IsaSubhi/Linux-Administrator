#!/bin/bash

read -p "enter username:" name

read -s -p "enter password:" pass
echo

if [ "$name" = "david" -a "$pass" = "123" ]; then
    echo "Access granted"
else
    echo "Wrong password!"
fi
