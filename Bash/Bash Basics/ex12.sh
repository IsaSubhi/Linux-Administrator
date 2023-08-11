# get year from argument 1
# but, if number of arguments is zero
# read argument from input

# print "leap year" if it's leap year
# else print "common year"


# if [ $# -lt 1 ]; then
  if (( $# < 1 )); then
    read -p 'enter year:' year
else
    year="$1"
fi

if ((year % 4 != 0)); then
    echo "common year"
elif ((year % 100 != 0)); then
    echo "leap year"
elif ((year % 400 != 0)); then
    echo "common year"
else 
    echo "leap year"
fi


