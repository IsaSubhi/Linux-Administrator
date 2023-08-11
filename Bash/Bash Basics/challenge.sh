# get as arguments 1 & 2 two file names
# assume both exists and each
# contain a single word: an integer
# print the file name with the largest number
# (on a tie print the first)


file1="$1"
file2="$2"

num1=$(cat "$file1")
num2=$(cat "$file2")

if ((num1 >= num2)); then
    echo "$file1"
else
    echo "$file2"
fi

