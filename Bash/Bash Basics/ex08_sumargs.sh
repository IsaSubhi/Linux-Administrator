# write a script that takes arguments
# assume arguments are integers
# print the sum of the integers


# example: bash ./ex08_sumargs.sh 100 20 3
#  output: 123


sum=0
# loop over all arguments (store each iteration as num)
for num; do
    ((sum += num))
done

echo "$sum"
