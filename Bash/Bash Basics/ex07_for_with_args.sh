# comment out to try these arguments:
# set -- aaa bbb ccc "hello world" ddd "that's all folks"

echo '---- for arg ----'
# notice we didn't write "in":

for arg; do
    echo "$arg"
done


# other ways to loop arguments
# prefer not to use these methods:

# there 4 variables that represent
# arguemnts:
#
# $*    --> all arguments as plain text
# $@    --> same as $*
#
# "$*"  --> all arguments as a single argument
# "$@"  --> each argument even with spaces

echo '---- "$@" ----'
for arg in "$@"; do
    echo "$arg"
done


echo '---- $@ ----'
for arg in $@; do
    echo "$arg"
done

echo '---- $* ----'
for arg in $*; do
    echo "$arg"
done

echo '---- "$*" ----'
for arg in "$*"; do
    echo "$arg"
done


