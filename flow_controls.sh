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


