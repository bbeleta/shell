#exquadrat4
#Bel Santandreu Nadal

valors=$*
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
        quadrat=0
        nombre=0
        columna=1 
        linea=1 
        while [ $quadrat -lt $a ]
        do
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
            let quadrat=$quadrat+1
            columna=1
            linea=1
            nombre=0
        done

        echo ""
    done 
else
    echo "ERROR"
    echo "El nombre que has introduit ha de ser un nombre enter entre 1 i 9"
fi
