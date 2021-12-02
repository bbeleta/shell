#Ex array 2
#Bel Santandreu Nadal

LLETRES=("h" "h" "t" "u" "k" "g" "f" "h" "u" "i")

conta=0

for var in ${LLETRES[@]}
do
    if [[ $var == "h" ]] || [[ $var == "H" ]]
        then
        conta=$(($conta+1))
        fi
done
echo "Elnombre de "h" és $conta"
