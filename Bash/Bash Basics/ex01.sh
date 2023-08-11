
i=0                     # init
while [ "$i" -lt 10 ]; do  # cond 
    echo -n "$i "       # work
    ((i = i + 1))       # incr
done
echo


i=0                     # init
while ((i < 10)); do  # cond 
    echo -n "$i "       # work
    i=$((i + 1))       # incr
done
echo

# ((i = i + 1))
# i=$((i + 1))
# ((i += 1))
# ((i++))

