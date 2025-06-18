echo -e "\e[1;4;33mWelcome to my quiz\e[0m"
read -p " how old is muna  
          A. 55
          B. 68
          C. 19
"  x  
read -p " what is muna surname
        A.urmum
        B.urdad
        C.Guled
" y 
if [[ "$x" = "C" && "$y" = "C" ]]; then 
echo  "  well done nigga you have scored two points " 
elif [[ "$x" = "C" || "$y" = "C" ]]; then 
echo " well done nigga you have scored one point " 
else 
echo " ur dumb ur score is 0 " 
fi

