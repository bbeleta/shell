#exquadrat1
#Bel Santandreu Nadal

lletra=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10")

echo "Digues un numero"
read numero

for (( i=0; i<numero; i++ ))
do
    for (( j=1; j<numero; j++ ))
    do
        printf $numero - 1
    done
    echo $numero

done

