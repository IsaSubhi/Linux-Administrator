# Question 5 [10 points]
#
# assume a text file called homework.c exits in your current working directory.
# Print all the  lines in the file homework.c that contain the word printf sorted alphabetically
#
# Write your answer below the line:
#-------------------------------------------------------------------------------------------

cat ./homework.c | grep printf | sort