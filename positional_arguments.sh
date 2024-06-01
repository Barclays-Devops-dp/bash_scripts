#!/bin/bash

if [[ $# < 3  ]]; then
       echo "you need to pass 3 arguments but you passed only $#"	
     exit 1
 fi
echo "${1} is borrowing this scripti and he works for ${2} as a ${3}"

echo $#

