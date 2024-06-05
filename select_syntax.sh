#!/bin/bash

our_rg=("eu-west-1" "eu-west-2" "us-east-1")

#select region in eu-west-1 eu-west-2 us-east-1

select region in "${our_rg[@]}"
do
  echo "you chose the ${region}  region"
  exit 0
done
