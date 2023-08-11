#!/bin/bash

if [ $# -ne 3 ]; then
    echo "must have 3 arguments (N2 OP N2)"
    exit 1
fi

num1=$1
op=$2
num2=$3

if [ "$op" = '+' ]; then
    echo $((num1 + num2))
elif [ "$op" = '-' ]; then
    echo $((num1 - num2))
elif [ "$op" = '*' ]; then
    echo $((num1 * num2))
elif [ "$op" = '/' ]; then
    if [ "$num2" -eq 0 ]; then
        echo "cannot divide by zero"
        exit 1
    else
        echo $((num1 / num2))
    fi
else
    echo "not a valid opertor"
fi
