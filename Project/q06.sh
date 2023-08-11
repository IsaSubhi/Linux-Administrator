# Question 6 [5 points]
#
# The working directory is /home/user1/
# The following commands create two links to the same file whose path is /home/user1/info.txt:
#
#     ln -s /home/user1/info.txt link1
#     ln -s ./info.txt link2
#
# Explain in detail what is the difference between link1 and link2? 
#
# Write your answer below the line:
#-------------------------------------------------------------------------------------------

link1 has a absolute soft link to file info.txt. meaning it link1 can be moved and opened from
anywhere as long as the path /home/user1/info.txt exists

link2 has a relative soft link to the directory. meaning it can only be opned from a directory that 
has file info.txt in it. the system will be searching for info.txt in the same directory that link2
is in it.