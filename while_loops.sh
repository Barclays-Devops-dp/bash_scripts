#!/bin/bash

num=2
while [[ $num -gt 1  ]];
do
   echo "yes number is greater"
   ((num++))
   echo $num
   if [[ $num -eq 100  ]]; then 
	   break
   fi
done
