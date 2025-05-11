#!/bin/bash

function create_file {
 file_name=$1
 is_shell_script=$2
 touch $file_name
 echo "file $file_name created"

 if [ "$is_shell_script" = true ]
  then
   chmod u+x $file_name
   echo "added execute permission"
 fi

}

function sum() {
 total=$(( $1 + $2 ))
 return $total
 #echo $total
}

sum 2 10
result=$?
echo "sum of 2 and 10 is $result"
#result=$(sum 200 100)
#echo "Sum is: $result"
create_file test.txt
create_file myfile.yaml
create_file myscript.sh true
#create_file myscript.sh
