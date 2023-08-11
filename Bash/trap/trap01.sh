
trap 'keep_going=0' INT



echo "START. process number is $$"
keep_going=1

while ((keep_going)); do
    printf "."
    sleep 0.5
done

echo
echo "END"
