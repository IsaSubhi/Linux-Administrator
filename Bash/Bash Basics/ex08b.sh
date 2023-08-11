# read username
# and password
#
# correct user name is your username
# correct password is 123

correct_username="$(whoami)"
correct_password='123'

read -p "username: " username
read -p "password: " password

if [ "$username" = "$correct_username" -a "$password" = "$correct_password" ]
then
    echo "OK"
else
    echo "FAIL"
fi


