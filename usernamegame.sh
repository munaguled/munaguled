#!/bin/bash
 #  echo "welcome : user " 
# read -p " Enter a command or type exit to quit " input 
 #while [ "$input" != "exit" ]; do
 # done 
 # echo " you typed : $input " 
 
#keep prompting user for username  and pass word until it matches 

username=urmum 
password=urdad     
until [[ "$hehe" = "$username" && "$hoho" = "$password" ]]; do   
read -p "what is your username " hehe 
read -p "what is password " hoho
if [[ "$hehe" = "$username" && "$hoho" = "$password" ]]; then 
echo " yes thats right " 
else 
echo " try again pal " 
fi 
done 






















done

