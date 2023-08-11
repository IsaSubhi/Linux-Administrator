#!/bin/bash

# echo -n "enter password:"
# read -s pass

read -p "enter password:" pass
echo

# try to enter: 1 = 1 -o 1

# echo "[$pass]"

if [ $pass = 123456 ]; then
    echo "Access granted!"
else
    echo "Wrong password!"
fi
