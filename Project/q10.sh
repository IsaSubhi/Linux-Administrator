# Question 10 [20 points -> 5 for each section]
#
# Write a script that does the following:
#
# A) If the script did not receive exactly one argument, print
#    "needs exactly 1 argument" and exit with status code 1
#
#    if argument 1 is not an executable directory print "not a folder"
#    and exit with status code 2
#_
# B) count how many files inside arugment 1 are directories
# if it is less than 5, print "not enough directories" exit with status code 3
#
# C) create a folder in your current directory in the format HH_MM where
# HH is the current hour in 24-hour format and MM is the current minutes.
#
# D) create a backup of argument 1 inside the folder you created in section C,
# the backup file should be a tarred gzip file called backup.tar.gz
#
#
# Write your answer below the line:
#-------------------------------------------------------------------------------------------

#A
if [ $# -gt "1" ]; then
    echo "need exactly 1 argument"
    exit 1
fi
if ! [ -d $@ -a -x $@ ]; then
    echo "not a folder"
    exit 2
fi

#B
num=$(ls $@ | wc -l)
if [ $num -lt 5 ]; then
    echo "not enough directoriy"
    exit 3
fi

#C
DATE=$(date +%H_%M)
create_dir=$(mkdir $DATE)

#D
$(tar -cf $DATE/$@.tar $@ | gzip $DATE/$@.tar)