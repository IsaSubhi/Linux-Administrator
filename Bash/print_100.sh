# A)
for ((i=1; i <= 100; i+=3)); do
    printf $i" "
done
echo
echo

# B)
i=1
while (( i <= 100 )); do
    printf $i" "
    ((i+=3))
done
echo
echo

# C)
i=1
until (( i > 100 )); do
    printf $i" "
    ((i+=3))
done
echo
echo

# D)
echo {1..100..3}
