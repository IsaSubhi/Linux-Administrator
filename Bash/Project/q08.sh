# Question 8 [10 points]
#
# Explain in detail what is the difference between
# soft links and hard links. what are the advantages
# and disadvantages of linking files as hard links?
# and as soft links?
#
# Write your answer below the line:
#-------------------------------------------------------------------------------------------

A soft link is a copy of a file, it links to the files's name and path. It's used to reduse disk 
usage. The link is lost if the original file is moved/deleted.

A hard link is a separate file that point to the original file's inode. It's a different file from 
the original so deletingor moving the original file doesn't effect the hard link. The hard link cannot
be recognised as a link of the original file.