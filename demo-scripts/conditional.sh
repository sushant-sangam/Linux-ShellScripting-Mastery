#!/bin/bash

echo "Setup and configure server"

file_name=config.yaml
deployment_file=""

if [ -d "config" ] 
then
	echo "Reading config directory contents"
	config_files=$(ls config)
else
	echo "Config dir not found! Creating one"
	mkdir config
fi

if [ -f "deployment.yaml" ];
then
	echo "Reading deployement file contents"
	deployement_file=$(cat deployment.yaml)
else
	echo "Deployement file not found. Creating new deployement file."
        touch deployment.yaml
fi

echo "using file $file_name to configure something"

echo "here are all configuration files: $config_file"

echo "Deployment file content: $deployment_file"
