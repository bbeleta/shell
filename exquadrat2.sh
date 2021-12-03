#Ex quadrat 2
#Bel Santandreu Nadal

echo "Digues un numero"
read numero
a=0 
num1=1
suma=0

for (( i=0; i<numero; i++ ))
do
    for (( j=0; j<numero; j++ ))
    do
        printf $suma
    if [ $suma -lt 9 ]
        then 
        let suma=$suma+$num1
    else 
    suma=0
fi 
    done
    echo ""
done

