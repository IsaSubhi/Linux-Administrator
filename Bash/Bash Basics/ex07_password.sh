# read password from user
# if password is 123
# print "access granted"
# else, print "access denied"

# -s : makes input silent (doesn't show on screen)
read -s -p 'what is the password: ' password
echo # in -s it doesn't go down a line

if [ "$password" = "123" ]
then echo 'Access granted!'
else echo 'Access denied...'
fi

