
if [ $# -ne 3 ]; then
    echo "must have 3 argumnts" >&2
    exit 1
fi


n1="$1"
op="$2"
n2="$3"

case "$op" in
"+") echo $((n1 + n2)) ;;
"-") echo $((n1 - n2)) ;;
"*") echo $((n1 * n2)) ;;

"/")    if ((n2 == 0)); then
            echo "cannot divide by zero" >&2
            exit 1
        else
            echo $((n1 / n2))
        fi
        ;;
    
  *)    echo "invalid operator (valid: +-*/)" >&2
        exit 1
        ;;
esac












