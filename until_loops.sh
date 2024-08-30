# until loop. it is is similar to while but it will continue UNTIL a becomes. 
# until [ condition ]; do
#   # this code here will execute unitl a condition becomes true
# done 

number_of_servers_provisioned=1
until [[ $number_of_servers_provisioned -gt 10 ]]; do
      echo "servers provisioned: $number_of_servers_provisioned"
      ((number_of_servers_provisioned++))
done 
