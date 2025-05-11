#!/bin/bash

echo "setup and configure server"

file_name="config.yaml"

config_dir=$1

if [ -d "$config_dir" ] 
then
  echo "reading config file directory contents"
  config_files=$(ls "$config_dir")
else
  echo "config dir not found. Creating one"
  mkdir "$config_dir"
  touch "$config_dir/config.sh"
fi

user_group=$2

if [ "$user_group" == "sushant" ] 
then
  echo "configure the server"
elif [ "$user_group" == "admin" ] 
then
  echo "adminster the server"
else
  echo "No permission to configure server. wrong user group"
fi

echo "using file $file_name to configure something"
echo "here are all configuration_files:$config_files"
