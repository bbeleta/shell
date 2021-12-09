#condicional, exercici 2
#Bel Santandreu Nadal

echo "Digues el teu nom"
read nom
echo "Hola $nom"

    echo "Digues un numero"
    read numero
    echo "Digues un altre numero"
    read numero2

    echo "$((numero*2))"

    if test $numero -gt $numero2
    then
echo "Numero 1 és més gran"
fi
