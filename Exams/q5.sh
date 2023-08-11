#!/bin/bash

#simple solution
grep "error" error.log -c


#advanced solution
#(if error appears more than once in a line
# and we want to count it)

grep "error" error.log -iwo | wc -l

#-i insensitive --> counts Error and ERROR
#-w exact word  --> doesn't count terror
#-o show matches only --> can split a single line into
#                         multiple matches -> used with wc
