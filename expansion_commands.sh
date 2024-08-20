
#!/bin/bash
echo "script starting ......"

#$0 gets the  the name of the script you are running
echo $0
cp $0  my-folder1/$0-backup
echo "total arguments passed: $#"
echo "what are arguments are passed? $@"
echo "what are arguments are passed dollar START? $*"

echo "gives the exit status of the last command or script . SUCCESS = 0 , FAILED = any other number means it failed: $?"




echo "dollar zero was printed above!"
name="$1"
department="$2"
echo "this file was created by ${name}....".
echo "I am in the ${department} Department"

num_of_servers_to_create=$3
num_of_servers_to_decommission=$4
echo "I have ${num_of_servers_to_create} servers to create. "
echo "I should decommission ${num_of_servers_to_decommission} next week"
echo "In total i have  $((num_of_servers_to_create + num_of_servers_to_decommission))  servers to work on between now and next week!"

num1=$5
num2=$6

# arithmetric $((num1 + num2))
echo "the product of ${num1} and ${num2} is: $((num1 + num2))"

# command expansion/substitution
echo "today's date is $(date)"
