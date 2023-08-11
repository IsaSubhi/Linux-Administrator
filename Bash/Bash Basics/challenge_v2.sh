# get as arguments 1 & 2 two file names

# both arguments must exist
# both must be an existing readable regular file
# if not, print an error and exit with
# a "failure" status code

# otherwise if arguments are correct do the following:
#
# assume each contain a single word: an integer
#
# print the file name with the largest number
# (on a tie print the first)


# ANSWER:

# check there are exactly 2 arguments:
if (($# != 2)); then
    echo "error: must have two arguemnts"
    exit 1
fi 

file1="$1"
file2="$2"

# check file1 exists and is regular and readable
if ! [ -f "$file1" -a -r "$file1" ]; then
    echo "error: arugment 1 is not regular or not redable"
    exit 1
fi

if ! [ -f "$file2" -a -r "$file2" ]; then
    echo "error: arugment 2 is not regular or not redable"
    exit 1
fi


num1=$(cat "$file1")
num2=$(cat "$file2")

if ((num1 >= num2)); then
    echo "$file1"
else
    echo "$file2"
fi

