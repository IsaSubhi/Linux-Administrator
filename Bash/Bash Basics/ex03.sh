for x in 1 2 3 4 5
do
    echo -n "$x "
done
echo


for x in 1 "hello" 1 '1.txt'
do
    echo -n "$x "
done
echo

for x in {1..10}; do 
    echo -n "$x "
done
echo

echo {1..10}

for x in {100..20..5}; do 
    echo -n "$x "
done
echo

echo {100..20..5}

