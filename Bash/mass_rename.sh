# number of arguments check
if (( $# != 2 )); then
    echo "$0 must have exactly 2 arguments!"
    exit 1
fi

# ask user before renaming the files
echo "WARNING! you are about to rename all the files in $2 which contains:"
ls $2
read -p "Are you sure? (y/N)" choice

if [ "$choice" != 'y' ]; then
    echo "exiting without renaming"
    exit 0
fi

# $1 is the text to add, $2 is the directory with files to rename
for file in "$2"/*; do
    echo "renaming $file to $file$1"
    mv -i "$file" "$file""$1"
done

