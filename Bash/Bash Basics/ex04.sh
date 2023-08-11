# Do this:

for x in data/*.txt; do
    echo "$x"
done
echo "-----"


# Don't do this:

for x in `ls data/*.txt`; do
    echo "$x"
done 
echo "-----"

# for splits arguments, like any command, by spaces
# for x in data/1.txt data/2.txt data/a.txt data/my data.txt


