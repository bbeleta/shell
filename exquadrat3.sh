#Ex quadrat 2
#Bel Santandreu Nadal

valors=$*
nombre=0 
valid=0 
for a in ${valors[@]} 
do
    if [ $a != "1" ] && [ $a != "2" ] && [ $a != "3" ] && [ $a != "4" ] && [ $a != "5" ] && [ $a != "6" ] && [ $a != "7" ] && [ $a != 8 ] && [ $a != "9" ] 
    then
        valid=1
    fi
done

if [ $valid -eq 0 ]
then
    for a in ${valors[@]}
    do
        columna=1 
        linea=1 
       
        while [ $columna -le $a ]
        do
            if [ $nombre -lt 9 ]
            then
            printf $nombre
            let nombre=$nombre+1
            else
            printf $nombre
            nombre=0
            fi
            if [ $linea -lt $a ]
            then 
                let linea=$linea+1
            else
                echo ""
                linea=1
                let columna=$columna+1
            fi
            done

        echo ""
    done 
else
    echo "ERROR"
    echo "Has d'introduir un valor entre 1 i 9"
fi 
