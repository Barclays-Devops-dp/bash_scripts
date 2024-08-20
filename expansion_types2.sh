#!/bin/bash
echo "======================================"
runner=Peter
region=us-east-1
number_of_big_servers=10
number_of_small_servers=5
echo "this script was created by Eng Ola"
echo "this is script is being run by Eng ${runner}"
echo "Eng ${runner} is provisioning ${number_of_big_servers} BIG SERVERS in the ${region} region"
echo "and ${number_of_small_servers} SMALL SERVERS in the ${region} region"
# eg $((num1 + num2))
# echo "In total we have provisioned ${number_of_big_servers} + {number_of_small_servers}" , this WONT add the values up.
echo "In total we have provisioned $((number_of_big_servers + number_of_small_servers))"
echo "this script is being run in the ${region} region"
ls
mkdir my_scripts
# ls
touch my_files.txt 
# ls
# tree
# sudo yum install tree
# sudo yum install tree -y 
# tree
# ls
# mv my_files.txt my_scripts/
# # ls
# tree
# ls
touch pythonfile.py
# ls
mv pythonfile.py pfile.py
# ls
# history
ls
num1=20
num2=10
echo  " ${num1} divided by ${num2} =  $((num1/num2)) "

echo "Thank you for running this script for us Eng ${runner}"

#command expansion $(command)
echo "i want to see content of the directory which $(ls)"
echo "This script was run in on $(date)"
echo "check the content of the current users home directory files $(ls ~) "

#brace expansion: {} 
# touch file{1..100}.txt
#    rm file{1..100}.txt
#    create files from a to z:
#    touch pythonfile_{a..z}
#    remove files from k to z:
#    rm pythonfile_{k..z}
#    touch lovelyfiles_{0..20..2}
   
#    touch report_{mon,tues,wed,thurs}_2024.csv
#run brace expansion inside a bash script
echo peterfile_{1..100}.pt

#process substition :using the less than " <() "  sign to pass the output of one command as an input into the command preceeding it
diff <(cat ppp.dt) <(cat ddd.pt)
