#!/bin/bash

echo $USER
if [[ $USER == "yaw-amoabeng" ]]; then 
	echo "yes, we are running on amazon linux"
else
 echo "No, this user is not ec2-user"
fi


# flow controls / LOGIC
# IF 

#01.  first structure way of if clause
# if [[ condition  ]]; then 
#       do what you would have when it is TRUE
# fi

if [[ 2 -gt 1 ]]; then 
     echo "Of course 2 will always be greater than 1"
fi

if [[ 5 -eq 100 ]]; then
    echo "this is surprising , because we have been taught that 5 is always less than 100"
fi

#02.  second structure way of if clause
# if [[ condition  ]]; then 
#       do what you would have when it is TRUE
# else
#   echo "this will run when it is NOT TRUE"
# fi
today=sunday

# if [[ $today == "sunday" ]]; then 
#     echo "i am going to church"
# else
#  echo "I am going to WORK"
# fi

#03.  second structure way of if clause
# if [[ condition  ]]; then 
#       do what you would have when it is TRUE
# elif [[ condition ]]; then 
#      do what you would have done if this second condition is true AFTER the first condtion
#      was evaluated to FALSE. 
# elif [[ condition ]]; then 
#      do what you would have done if this second condition is true AFTER the first condtion
#      was evaluated to FALSE. 
# else
#   echo "this will run when it is NOT TRUE"
# fi

today=saturday1

if [[ $today == "sunday" ]]; then 
    echo "i am going to church"
elif [[ $today == "saturday" ]]; then
    echo "I am going for a party!" 
else
 echo "I am going to WORK"
fi



# if [[ condition ]]; then 
#    # write the code that you want  execute in here
# fi
#if 2 is greater than 4 then this should run
if [[ 2 -gt 4 ]]; then
   echo "Yes this is true"
fi


#if 4 is greater than 2 then this should run
if [[ 4 -gt 2 ]]; then
   echo "Yes 4 is greater than 2"
fi

echo "this is the last line of the script"


#-z checks if the lenght of the string is zero ( which simply means it checks if the 
#string is empty). 
course="DevOps"
if [[ -z "$course" ]]; then
    echo "string is empty"
fi

city=""
if [[ -z "$city" ]]; then
    echo "string is empty"
fi

##if else
#-n checks for non-empty strings. if string is not empty it will result in true, and 
#and vice-versa
module=""
if [[ -n "$module" ]]; then
    echo "Module is ${module} and it is NOT empty"
else
    echo "You didn't provide module name, please run script again and provide module name"
fi

##elif : it is used to check multiple conditions in a sequence
echo ""
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
lesson="github actions"
if [[ $lesson == "linux" ]]; then
    echo "we love linux so we are running ${lesson}"
elif [[ $lesson == "git" ]]; then 
    echo "lession is git and we love ${lesson}"
elif [[ $lesson == "github actions" ]]; then 
    echo "lesson is ${lesson} and we love ${lesson}" 
else
    echo "You didn't provide module name, please run script again and provide module name"
fi


#operating with and (&&) and logical (||) or
#&& is used to check whether both conidtion are true
# runner=Peter
# if [[ -n $runner ]] && [[  $runner == "Peter" ]]; then
#    echo "Runner variable is NOT empty and the runner is ${runner}"
# else
#    echo "Either runner is empty or runner is not equal to Peter"
# fi 

echo ""
echo "--------------------------------------------------"
runner=""
if [[ -n $runner ]] || [[  $runner == "Peter" ]]; then
   echo "We are happy to run because eiher runner is not empty or runner is ${runner}"
else
   echo "Either runner is empty or runner is not equal to Peter"
fi 


