#suma un segon

num1=1

echo "Digues un número en hores"
read numero1
echo "Digues un número en minuts"
read numero2
echo "Digues un número en segons"
read numero3

echo $numero1:$numero2:$numero3
echo "Suma un segon"
let suma=$numero3+$num1
echo "S'ha sumat un segon i el resultat és $suma"


