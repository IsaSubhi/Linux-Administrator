
#changes in version 3:
#uses if-else instead of case
#prints division as float

if [ $# -ne 3 ]; then
    echo "must have 3 argumnts" >&2
    exit 1
fi


n1="$1"
op="$2"
n2="$3"

# we don't have to parenthesize +,-,/ only * since it means
# default (if other conditions before ')' do not match )

if [ "$op" = "+" ]; then
  echo $((n1 + n2))
  
elif [ "$op" = "-" ]; then
  echo $((n1 - n2))
  
elif [ "$op" = "*" ]; then
  echo $((n1 * n2))
  
elif [ "$op" = "/" ]; then

    if ((n2 == 0)); then
        echo "cannot divide by zero" >&2
        exit 1
    else
        # echo $((n1 / n2))
        echo "scale=2; $n1/$n2" | bc
    fi
    
else
    echo "invalid operator (valid: +-*/)" >&2
    exit 1
fi
