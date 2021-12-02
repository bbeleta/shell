#conditional, exercici calcul temporal
#Bel Santandreu Nadal

echo "Digués un numero1 en segons"
read numero1
echo $((numero1/3600))hores
echo $[((numer1%3600))/60]minuts
echo $[((numero1%3600))%60]segons
