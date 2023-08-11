# Question 2 [10 points]
#
# Write a script that reads all the arguments and returns the biggest number among them
# (you can assume all the arguments are integer numbers)
# 
# remember: use arguments sent to the script, do not use input or any other means of
#           getting information from the user besides arguments.
#
# Write your answer below the line:
#-------------------------------------------------------------------------------------------

BIG_NUM="0"
for number in $@
do
    if [ "$number" -gt "$BIG_NUM" ]; then
        ((BIG_NUM=number))
    fi
done
echo "The biggest number is $BIG_NUM"