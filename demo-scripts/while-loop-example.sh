#!/bin/bash

sum=0
while true
 do
   read -p "enter a score: " score

   if [ "$score" == "q" ] 
   then
    break
   fi

   sum=$(($sum+$score))
   echo "total score: $sum"
 
 done
