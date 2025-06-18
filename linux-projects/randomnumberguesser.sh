#!/bin/bash 
secret=$((RANDOM % 10 + 1 ))  
while true; do 
read -p " guess  a number between 1 and 10  " yum
if [[ "$yum" -eq "$secret" ]]; then 
echo " thats correct " 
break  
elif [[ "$yum" -lt "$secret" ]]; then 
echo " too low try again " 
else 
echo " too high try again " 
fi 

done

#
