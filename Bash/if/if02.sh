#!/bin/bash

read -p "enter password:" pass
echo

if [ "$pass" = 123456 ]; then
#if test "$pass" = 123456; then
    echo "Access granted"
else
    echo "Wrong password!"
fi


# if [ "" ];    # check if text "" is nonzero -> false
# if [ -n "" ]; # check if text "" is nonzero -> false
# if [ -z "" ]; # check if text "" is empty -> true
# if [ ];
#
# if [ "ABC" ];    # check if text ABC is nonzero -> true
# if [ -n "ABC" ]; # check if text ABC is nonzero -> true
# if [ -z "ABC" ]; # check if text ABC empty -> false

