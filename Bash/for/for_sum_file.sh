filename="$1"

sum=0
for num in $(cat "$filename"); do
    ((sum+=num))
done

echo "$sum"
