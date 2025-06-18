#!/bin/bash 

name() { 
read -p " what is ur name " username 
if [[  -z "$username" ]]; then 
echo "error " 
exit 1
fi 
}

name "$username " 


