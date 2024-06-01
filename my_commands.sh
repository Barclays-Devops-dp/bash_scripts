#!/bin/bash
my_name="Josephine"
num_of_script_yesterday=20
num_of_script_today=10
echo "Hey, i am actually creating folders and making magic happen ..... hahaha!, ${my_name}  on the mic"
echo "Yesterday i ran ${num_of_script_yesterday}"
echo "Today i am running ${num_of_script_today}"
echo "In total i between yday and today i have run $((num_of_script_yesterday + num_of_script_today))"

echo "for records sake, i am marking the date for today. And today's date is $(date)"
mkdir shell_scripting
touch i_am_learning_shell_script
ls
mv i_am_learning_shell_script shell_scripting/
echo "still on the move engineer ${my_name}"
ls
tree
if [[ $USER == "ec2-user" ]]; then
	echo "user: ${USER} is installing packages on 'ubuntu server'"
	sudo yum install tree -y
	sudo yum install git  -y
elif [[ $USER == "ubuntu"  ]]; then
	echo "user: ${USER} is installing packages on 'ubuntu server'"
	sudo snap install tree -y
	sudo apt install git -y
elif [[ $OS == "OS=Windows_NT" ]]; then
	echo "we do not have any installer yet. we advise you toil on google by searching"
else
	echo "hey you, what system do you use?"
fi
history

echo "this is yours truly Engineer ${my_name}"

