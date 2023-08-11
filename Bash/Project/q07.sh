# Question 7 [10 points]
#
# Write a command to find and print the names of all files in your home directory that
# fullfill all of the following conditions:
# 
#  * their name ends with .c
#  * they are newer than the file ~/prog5.c
#
# (the search should be recursive, so it should also look in subfolders in you home directory)
#
# Write your answer below the line:
#-------------------------------------------------------------------------------------------

find ~ -name "*.c" -anewer "~/prog5.c"