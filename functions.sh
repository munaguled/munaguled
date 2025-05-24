
#!/bin/bash
greet user() { 
read -p " hi whats ur name " name 
echo " Hello $name welcome back 
} 

reminder() { 
read -p " what should i remind you about " event 
red -p " in how many minutes " time 
sleep $(( time * 60 )) 
echo " reminder about the $event " 
} 

countdown() { 
read -p " how many seconds do you me to count down from ?      "  time 
while [[ "$time " -gt 0 ]]; do 
echo "$time" # print the number 
sleep 1 # wait one second 
time=$((time -1 ))
done 
echo " all done ! " 
} 


make_dir() 
read -p " what is your folder name "  folder
mkdir " $folder " 

echo " MENU " 

