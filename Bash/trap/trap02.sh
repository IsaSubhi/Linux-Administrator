
trap 'c=+' USR1 
trap 'c=.' USR2
trap 'printf !' QUIT

echo "pid: $$"

c="."

while true; do
    printf "$c"
    sleep 0.5
done
