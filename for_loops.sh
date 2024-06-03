#!/bin/bash

#declare -a array_of_regions

array_of_regions=("us-east-1" "us-east-2" "eu-west-2")
for item in "${array_of_regions[@]}"; do
   echo "i am dealing with: ${item}"
   echo "I am done. i am moving on to the next item"
   
done

array_of_users=("david" "ec2-user")

for file in /home/ec2-user/* ; do
  echo $file
done
