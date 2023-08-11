# Question 9 [10 points]
#
# Write a script that would receive a filename as the first argument.
# You can assume the file is a text file and each line in the file is an integer number.
# the script will print the average value of the numbers listed in that file file.
#
# Write your answer below the line:
#-------------------------------------------------------------------------------------------

AVERAGE="0"
POINTS="0"
NUM="0"
for SCORE in $(cat $@); do
    ((POINTS=POINTS+SCORE))
    ((NUM++))
done
((AVERAGE=POINTS/NUM))
echo "Avarage is: $AVERAGE"