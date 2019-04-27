#!/bin/bash
echo "timemachine add user >>>"

read -p "type username: " USERNAME
echo -n "type password: "
read -s PASSWORD
echo
echo -n "type the password confirm: "
read -s PASSWORD_CONFIRM
echo

if [ ! "$PASSWORD" = "$PASSWORD_CONFIRM" ]; then
  echo "passwords are different!"
fi

read -p "type volume size(GB): " VOL_SIZE_GB

docker exec timemachine add-account $USERNAME $PASSWORD Timemachine_$USERNAME /timemachine/$USERNAME $(($VOL_SIZE_GB * 1024))