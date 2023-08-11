#dir="$HOME/Desktop"
dir=.

y=$(date "+%Y")
m=$(date "+%B")
d=$(date "+%d")

backup_dir="$dir/$y/$y-$m/$y-$m-$d"

mkdir -p "$backup_dir"

tar -czf "$backup_dir"/archive.tar.gz "$dir"

