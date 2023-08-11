
# a check to see we actually got a single argument, if not we exit with an error

if (( $# != 1)); then
    echo "$0 requries exactly 1 argument, receieved $# arguments instead" # the >&2 part means to redirect output to error
    exit 1
fi

if [ -e "$1" ] ; then
    echo "path $1 exists"
    exit 0
else
    echo "path $1 doesn't exist"
    exit 1
fi

