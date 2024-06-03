#/bin/bash

array_of_users=("david" "ec2-user")


for file in $(ls /home/ec2-user/bash_scripts/*)
do
  echo $file
done

