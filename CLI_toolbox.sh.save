#!/bin/bash
greet_user() { 
read -p " what is your name " namey 
echo " Hello "$namey"   "  
} 


create_directory() {   
read -p " what do you want your filename to be :          "  file 
mkdir $file  
} 


set_reminder() {
read -p " what is the reminder :      " event 
read -p " in how many seconds     :      " time 
sleep $time 
echo " ur $event is now " 
} 

countdown() { 
read -p " what number do u want to countdown from "  time 
while [[ "$time " -gt 0 ]]; do 
echo $time 
sleep 1 
time=$(( time - 1 )) 
done 
} 



while true; do  
echo  "   1. greet user "
echo    " 2. create directory "
echo    " 3. set reminder " 
echo    " 4. countdown "
echo    " 5. exit        "  
read -p " pick an option :    " urmum 

case $urmum in 
1) 
greet_user 
;; 
2) 
create_directory 
;; 
3) 
set_reminder 
;; 
4) 
countdown
;; 
5)  
break 
;;

esac
done 

