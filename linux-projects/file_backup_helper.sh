#!/bin/bash



#NOTES 
# if [ -f "$file " ] - this checks if a file exists
# if [ -z "$var " ] - this checks if user didnt type anything 
# cp file.txt file.txt.bak - this creats a copy of the file like a back up 
# exit 1 - exits because there is a problem with program 

#PROJECT 
read -p " what is the name of your file :      "    filename
if [[ -z "$filename " ]]; then 
echo " you didnt enter a filename " 
exit 1 
fi 
 
if [[ -f "$filename" ]]; then 
cp "$filename" "$filename".bak 
else 
echo "error " 
exit 1 
fi

