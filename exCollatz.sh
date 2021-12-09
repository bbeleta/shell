#Seqüència de Collatz 
#Bel Santandreu Nadal

echo "Introdueix un nombre enter més gran o igual que 1"
    printf "Introdueix el valor: "
        read num
pas=0 
res=$num 
if [ $num -ge 1 ]
then
    while [ $res -ne 1 ]
    do
        let div=$res%2 
        if [ $div -eq 0 ]
        then
	        let res=$res/2
	        let pas=$pas+1
        else
	        let res=$res*3
	        let res=$res+1
	        let pas=$pas+1
        fi
    done
    echo "Ha fet $pas passes"
else
    echo "ERROR"
    echo "Introdueix un nombre enter més gran o igual que 1"
fi 
