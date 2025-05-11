#!/bin/bash

echo "Setup and configure server"

file_name=config.yaml
config_files=$(ls config)

echo "using file $file_name to configure some configuration in kubernetes"
echo "here are all configuration files: $config_files"
