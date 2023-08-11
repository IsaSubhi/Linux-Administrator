# get year from argument 1
# but, if number of arguments is zero
# read argument from input

# return 0 if it's leap year
# else return 1


# if [ $# -lt 1 ]; then
  if (( $# < 1 )); then
    read -p 'enter year:' year
else
    year="$1"
fi

if ((year % 4 != 0)); then
    exit 1
elif ((year % 100 != 0)); then
    exit 0
elif ((year % 400 != 0)); then
    exit 1
else 
    exit 0
fi


