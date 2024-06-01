#!/bin/bash

echo $USER
if [[ $USER == "yaw-amoabeng" ]]; then 
	echo "yes, we are running on amazon linux"
else
 echo "No, this user is not ec2-user"
fi



