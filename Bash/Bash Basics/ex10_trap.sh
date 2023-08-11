echo "my process ID is: $$"

trap "c='!'" INT

c='.'

while true; do
    printf $c
    sleep 0.5
done
