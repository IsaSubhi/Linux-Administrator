if (( $#  != 1 )); then
    echo "$0 must have exactly 1 argument!"
    exit 1
fi

echo -n "checking..."

# using ping's return value we can check if url is available or not
# to prevent ping from running in a loop we use "-c 1" option to send only 1 "ping"
# we also silnce it using "&>/dev/null"

if ping -c 1 "$1" &>/dev/null ; then
    echo
    echo "$1 IS AVAILABLE!"
else
    echo
    echo "$1 IS NOT AVAILABLE..."
fi
