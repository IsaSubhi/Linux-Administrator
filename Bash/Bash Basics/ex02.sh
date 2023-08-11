i=100                 # init
while ((i >= 20)); do  # cond 
    echo -n "$i "     # work
    ((i -= 5))        # incr
done
echo


# 100 95 90 ... 25 20
