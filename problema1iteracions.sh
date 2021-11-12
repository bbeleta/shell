#Problema 1 ITERACIONS

echo "Digues un nombre"
    read nombre1

n=1

while (( $n <= 20 ))
do
    numero1=$(( numero1+1 ))
    n=$(( n+1 ))
    echo " El $numero1"
done
