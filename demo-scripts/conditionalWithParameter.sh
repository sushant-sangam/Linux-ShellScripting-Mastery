#!/bin/bash

echo "Setup and configure server"

file_name=config.yaml
deployment_file=""

config_dir=$1

if [ -d "$config_dir" ]
then
        echo "Reading config directory contents"
        config_files=$(ls "$config_dir")
else
        echo "Config dir not found! Creating one"
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

echo "here are all configuration files: $config_files"
