#!/bin/bash 
read -p " type in your reminder " reminder
read -p " how many minutes do you want your reminder in :   " time      
echo " your $reminder is now "  | at now + $time minutes 
sudo ufw enable 
sudo ufw status 

