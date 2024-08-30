#!/bin/bash
echo "======================================"
echo "???????? check internal IFS $IFS" #''\t\n

old_ifs=$IFS
IFS="," #replace ''\t\n with comman(,)
echo "i am running the script called: $0" # gives you the name of the script that is being run.
echo "this is the value passed at index  $1"


echo ">>>>>>>>>>>>>>>>>These parameters have been passed before running the script: $@"

echo "///////////Arguments as one line from terminal : $*" 
for args in "$@"; do 
    echo "this is the item i have picked CURRENTLY: ${args}"
done

echo "Arguments as one word: $*"
for args in " $*"; do 
    echo "this is the item i have picked CURRENTLY: ${args}"
done

#restore the IFS value
IFS=$old_ifs
exit 99


echo "total number of parameter passed is: $#"
# 20-29 # exit codes that you want to stop
# 10-19 # ei

if [[ $# -lt 4  ]]; then 
   echo "Please pass at least 4 parameters. You have only passed $# paramters".
   echo "And these are:  $@"
#    exit 21
else
   echo "You passed these parameters/arguments:  $@"
fi 

echo "process of this script $$" #give us the process id of the script. 

curl -O httpt://dlcdn.apache.org/tomcat/tomcat-9/v9.0.93/src/apache-tomcat67-9.0.93-src.tar.gz
tomcat_exist_code=$?
curl -O httpt://dlcdn.apache.org/tomcat/tomcat-9/v9.0.93/src/apache-tomcat67-9.0.93-src.tar.gz

if [[ $? -eq 0 ]]; then
      echo "Tomcat downloaded successfully"
      
else
   curl -O https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.93/src/apache-tomcat-9.0.93-src.zip
   echo "error downloading tomcat and exit code is ${tomcat_exist_code}"
    #  exit ${tomcat_exist_code}
fi


echo "i am backing up file: $0"
cp $0 $0-backup-$$ # backup file with process id. 
runner=$1
region=us-east-1
echo "what was the error code of the command before this line $?"
region=$2
number_of_big_servers=$3
number_of_small_servers=$4
echo "this script was created by Eng Ola"
echo "this is script is being run by Eng ${runner}"
echo "Eng ${runner} is provisioning ${number_of_big_servers} BIG SERVERS in the ${region} region"
echo "and ${number_of_small_servers} SMALL SERVERS in the ${region} region"
# eg $((num1 + num2))
# echo "In total we have provisioned ${number_of_big_servers} + {number_of_small_servers}" , this WONT add the values up.
echo "In total we have provisioned $((number_of_big_servers + number_of_small_servers))"
echo "this script is being run in the ${region} region"
