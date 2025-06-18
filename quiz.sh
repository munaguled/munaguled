echo -e "\e[1;4;33mWelcome to my quiz\e[0m"
read -p " Which city does Muna live in  
          A. Norwich
          B. Manchester
          C. London
"  x  
read -p " what is muna surname
        A.Smith
        B.Johnson
        C.Guled
" y 
if [[ "$x" = "C" && "$y" = "C" ]]; then 
echo  "  well done  you have scored two points " 
elif [[ "$x" = "C" || "$y" = "C" ]]; then 
echo " well done  you have scored one point " 
else 
echo "  Your score is 0 " 
fi

