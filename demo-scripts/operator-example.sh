#!/bin/bash

user_group=$1

if [ "$user_group" == "devops" ]
then
  echo "configure the server"
elif [ "$user_group" == "admin" ]
then
  echo "adminster the server"
else
  echo "No permission to configure server. wrong user group"
fi
