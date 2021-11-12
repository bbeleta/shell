#PROBLEMA 1 ARRAY


conta=0
echo $*
paraules=$*


for var in ${paraules[@]} 
do
    if [ $var = h -o $var = H ]
    then
        let conta=$conta+1
    fi

done 

if [ $conta -gt 1 ]
then
    echo "Hi ha $conta h's"
elif [ $conta -eq 1 ]
then
    echo "Hi ha $conta h"
else
    echo "No hi ha cap h"
fi
