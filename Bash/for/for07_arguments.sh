#for without in will iterate the arguments

#this is the suggested way
for arg; do
    echo $arg
done
echo

# other ways (with problems)
echo '$*:'
for arg in $*; do
    echo $arg
done
echo

echo '$@:'
for arg in $@; do
    echo $arg
done
echo

echo '"$*":'
for arg in "$*"; do
    echo $arg
done
echo

# this is the same as the first approach:
echo '"$@":'
for arg in "$@"; do
    echo $arg
done
echo


