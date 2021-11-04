#conditional, exercici 3
numero=$(($RANDOM%10))
echo $numero
echo "Digues un altre numero"
read numero2

if test $numero -gt $numero2
then
echo "numero 1 és més gran"
fi 
