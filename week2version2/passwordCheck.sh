#!/bin/bash 

# Week 2 script "passwordCheck.sh"

# Type a secret password (hide password input)

echo -e "\e[1;31m "Enter Password:" \e[0m"
read -sp pass_var

# Check the user’s password against the hash stored in 'secret.txt'
var_hash=$( echo $pass_var | sha256sum )

hashfile="secret.txt"

myvariable=$(cat "$hashfile")
    
echo "1: $var_hash"
echo "2. $myvariable"

# If the user’s password is correct, print “Access Granted” and quit with the exit code 0.
# If the user’s password is incorrect print “Access Denied” and quit with the exit code 1.

if [ "$var_hash" == "$myvariable" ];
then
        echo "Access Granted"
exit 0 

else
        echo "Access Denied"
exit 1

fi
