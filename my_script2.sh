#!/bin/bash


if [[ $USER == "ec2-user" ]]; then 
	echo "I love DevOps"
fi

if [[ $? == 0 ]]; then 
	echo "our command was successul"
else
  echo "Please check the syntax the last command was not succesful"
fi
