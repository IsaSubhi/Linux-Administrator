# Question 3 [10 points]
#
# You have two computers connected over ethernet cable. You have physical access to both computers
# and you know the usernames and passwords for both. The device name for ethernet connection is eth0
# on both machines.
#
# Explain below how you would set up their IP and netmask (you need to set up IP and netmask for both
# computers) so that they could communicate with each other and how you would check that they are
# connected correctly. (make sure to include the commands you would use and how, and the actions
# you would take)
# 
# Write your answer below the line:
#-------------------------------------------------------------------------------------------

Both: ifconfig  -> used to check network interfaces
Both: ifconfig eth0 up  -> to turn on eth0 interfaces
First computer: ifconfig eth0 10.0.0.10 netmask 255.255.255.0  -> to set up IP address to the interface 
with netmask of a Class C network. 
Second computer: ifconfig eth0 10.0.0.10 netmask 255.255.255.0  -> set up IP and netmask
route add default gw 10.0.0.1  -> to assign a defaul gateway
#Or if connected to DHCP# Sudo dhclient eth0  -> to get a new IP address automatically from DHCP.
To check the connection:
ping 10.0.0.11 (from computer 10.0.0.10)
and
ping 10.0.0.10 (from computer 10.0.0.11)
