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


regions_to_provision_to=("us-east-1" "ca-east-2" "eu-west-2")

echo ${regions_to_provision_to[@]}

# for loop iterates ( goes through the items one after the other)
# 01. structure of the "for loop"
# iterable: anything that we can iterate over.
# for temporary_variable_to_the_item_pick in ITERABLE; do 
#     do something with the item you picketed from the array/list
# done

for item in ${regions_to_provision_to[@]}; do 
    echo "this is the item i have picked CURRENTLY: ${item}"
done

#get items from a paths also as an iterable. 
for something in /home/ec2-user/bash_scripting/* ; do 
    echo "this item is also found ${something}"
done

# printing sequence of numbers and stepping in 2s
echo "  "
echo "  "
echo "======================="
for num in {2..20..2}; do
    echo "Number is: $num"
done

echo "  "
echo "  "
echo "======================="
# combine for loop with if clause
for num in {1..100..10}
do
   if [[ $num -gt 50  ]]; then 
       echo "number is greater than 50"
   fi 

echo "num is: $num"
done


echo "  "
echo "  "
echo "======================="
# using "continue" keyword to stop iteration. 
for region in eu-west-1 us-east-2 mx-west-1 za-east-1
do
   if [[ $region  == "mx-west-1"  ]]; then 
       echo "skipping MEXIC0"
       continue
   fi 

echo "We are provisiong 4 ec2 instances in region: $region"
done

echo "  "
echo "  "
echo "=*********************************************===="
declare -A country
country["gh"]=ghana
country["uk"]="united kingdom"
country["us"]=USA

for country in ${country[@]}
do

   # this is a "second for loop" inside a "first for loop"
    for town in "accra" "london" "new-york"
    do
        # using "if and eleif"
       if [[ $town == "accra" ]]; then 
          echo "${town} is the capital of ${country}"
        elif [[ $town == "london" ]]; then 
           echo "${town} is the capital of ${country}"
        elif [[ $town == "new-york" ]]; then 
           echo "${town} is the capital of ${country}"
       fi
    done

done




#==================================================================================================================================
array_of_regions=("us-east-1"  "us-west-2"  "eu-east-2")

for item in "${array_of_regions[@]}"; do
   # code to execute for EACH ITEM in the list goes here.
   echo "i am dealing with: ${item}" 
   echo "I am done. I am moving on to the next item"
done

#generate numbers from 0 to 100 in steps of 5
# echo {0..100..5}

echo ""
echo "============================"
# loop through numbers from 0 to 100 in steps of 5
for num in  {0..100..5}; do
   echo "Number is $num"
done

#for loop and and if clause. 

for num in {0..100..5}; do
  if [[ $num -gt 50  ]]; then
        echo "$num is greater than 50"
  fi
done 


echo ""
echo "============================"
array_of_regions=("us-east-1"  "us-west-2"  "eu-east-2")
for region in "${array_of_regions[@]}"; do
   # code to execute for EACH ITEM in the list goes here.
   if [[ $region == "us-west-2"  ]]; then
    echo "i am dealing with: ${region}" 
    echo "I am provisioning some servers into region ${region}"
  fi
done

