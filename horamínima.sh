#hora mínima
#Bel Santandreu Nadal

echo "BENVINGUTS A HORA MÍNIMA"
echo "L'hora mínima és:"

#INCIALITZAM LES ESTRUCTURES DE DADES
entrada=($1 $2 $3 $4)

a=10
b=10
c=10
d=10

######################################################
######################################################
#   RELLOTGE, HORA MÀXIMA:
#   EL RELLOTGE TÉ LES POSICIONS:    AB : CD
#   ON:
#       - A: HA DE SER ENTRE 0 I 2
#       - B: DEPÈN DE A:    - SI A=0 ó 1 B POT ESTAR SER ENTRE 0 I 9
#                           - SI A= 2 B POT ESTAR ENTRE 0,1,2
#       - C:
#       - D:
######################################################
######################################################



########################################
#CERCAM LA POSICIÓ "A"
#LA POSICIÓ "A" POT SER 0,1 ó 3
########################################

for i in 0 1 2 3 
do

  if [ ${entrada[$i]} -eq 0 ] || [ ${entrada[$i]} -eq 1 ] || [ ${entrada[$i]} -eq 2 ]
    then
        if [ $a -gt ${entrada[$i]} ] 
            then
                a=${entrada[$i]}
                pos=$i      
            fi
    fi  
done

#ACTUALITZAM ELS VALORS TROBATS
if [ $a -ne 10 ]
   then 
    entrada[$pos]=10
fi

########################################
#CERCAM LA POSICIÓ "B"
#LA POSICIÓ "B" SI A=(0 Ó 1) POT SER (0,9) SINO 0,1,2
########################################

#TE DUES OPCIONS
#   PER A=0,1 ON B POT SER DE 0 A 9
#   PER A=2 ON B PODRÀ SER 0,1 Ò 3     
if [ $a -eq 0 ] || [ $a -eq 1 ]
then
    for i in 0 1 2 3    
    do
    
        if [ $b -gt ${entrada[$i]} ] 
        then
            b=${entrada[$i]}
            pos=$i
        fi
    done
fi

if [ $a -eq 2 ]
then    
for i in 0 1 2 3 
    do
    
        if [ $b -gt ${entrada[$i]} ] && [ ${entrada[$i]} -gt 4 ]
        then
            b=${entrada[$i]}
            pos=$i
        fi
    done
fi

#ACTUALITZAM ELS VALORS TROBATS
if [ $b -ne 10 ]
then
    entrada[$pos]=10
fi


########################################
#CERCAM LA POSICIÓ "C"
#POT SER DE 0 A 5
########################################

for i in 0 1 2 3 
    do
    
        if [ $c -gt ${entrada[$i]} ] || [ ${entrada[$i]} -gt 6 ]
        then
            c=${entrada[$i]}
            pos=$i
        fi
    done
#ACTUALITZAM ELS VALORS TROBATS
if [ $c -ne 10 ]
then
    entrada[$pos]=10
fi

########################################
#CERCAM LA POSICIÓ "D"
#POT SER DE 0 A 5
########################################

for i in 0 1 2 3 
    do
    
        if [ $d -gt ${entrada[$i]} ]
        then
            d=${entrada[$i]}
            pos=$i
        fi
    done
#ACTUALITZAM ELS VALORS TROBATS
if [ $d -ne 10 ]
then
    entrada[$pos]=10
fi

    if [ $a -eq 10 ] ||  [ $b -eq 10 ] || [ $c -eq 10 ] 
    then 
    echo "-------------"
    echo "| 8 8 : 8 8 |"
    echo "-------------"
else
    echo "-----------------"
    echo "| $a $b : $c $d |"
    echo "-----------------"
fi
