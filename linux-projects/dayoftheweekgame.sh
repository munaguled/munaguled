
read -p  " Enter a day of the week:     "  x

 case "$x" in
Monday|monday|mon|Mon)
echo "weekday" 
;;
Tuesday|tuesday|tues|Tues) 
echo "weekday" 
;;
Wednesday|wednesday|wed|Wed) 
echo "weekday"
;;
Thursday|thursday|thurs|Thurs)
echo "weekday"
;;
Friday|Friday|Fri|Fri)
echo "weekday" 
;; 
Saturday|Sat|saturday|sat)
echo " weekend "  
;; 
Sunday|Sun|sunday|sun)
echo " weekend " 
;;
*) 
echo "invalid day " 
;; 

esac

 
