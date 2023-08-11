# read a number between 1 and 10
# check its range

read -p "number: " n

if [ "$n" -ge 1 -a "$n" -le 10 ]; then
    echo OK
else
    echo NO
fi


if [ "$n" -ge 1 ]&&[ "$n" -le 10 ]; then
    echo OK
else
    echo NO
fi

# [[ ]]  <-- new test brackets

#  (( ))  <-- "integer" test
# $(( ))  <-- "integer" test - with output

if ((n>=1 && n<=10)); then
    echo OK
else
    echo NO
fi

echo '$((n>=1 && n<=10)) = ' $((n>=1 && n<=10))

