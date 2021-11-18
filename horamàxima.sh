echo "BENVINGUTA S A HORA MÀXIMA"
echo "les dades entrades són: $1, $2, $3 i $4"


#INCIALITZAM LES ESTRUCTURES DE DADES
entrada=($1 $2 $3 $4)

a=-1
b=-1
c=-1
d=-1

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
echo "BUCLE PER TROBAR POSICIONS DINS A"
echo "cerca dins array [ ${entrada[0]} , ${entrada[1]} , ${entrada[2]} ,  ${entrada[3]} ]"
for i in 0 1 2 3 
do
  echo "|---miram la posició $i el valor de l'entrada és ${entrada[$i]} i el valor de a és $a i de pos és $pos"
  if [ ${entrada[$i]} -eq 0 ] || [ ${entrada[$i]} -eq 1 ] || [ ${entrada[$i]} -eq 2 ]
    then
        if [ $a -lt ${entrada[$i]} ] 
            then
                a=${entrada[$i]}
                pos=$i      
            fi
    fi  
done

echo "|-a val: $a i pos val $pos"

#ACTUALITZAM ELS VALORS TROBATS
if [ $a -ne -1 ]
   then 
    entrada[$pos]=-1
fi

########################################
#CERCAM LA POSICIÓ "B"
#LA POSICIÓ "B" SI A=(0 Ó 1) POT SER (0,9) SINO 0,1,2
########################################
echo "BUCLE PER TROBAR POSICIONS DINS B"
echo "cerca dins array [ ${entrada[0]} , ${entrada[1]} , ${entrada[2]} ,  ${entrada[3]} ]"
#TE DUES OPCIONS
#   PER A=0,1 ON B POT SER DE 0 A 9
#   PER A=2 ON B PODRÀ SER 0,1 Ò 3     
if [ $a -eq 0 ] || [ $a -eq 1 ]
then
    for i in 0 1 2 3    
    do
    echo "|---a)miram la posició $i el valor de l'entrada és ${entrada[$i]} i el valor de b és $b i de pos és $pos"
        if [ $b -lt ${entrada[$i]} ] 
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
    echo "|---b)miram la posició $i el valor de l'entrada és ${entrada[$i]} i el valor de b és $b i de pos és $pos"
        if [ $b -lt ${entrada[$i]} ] && [ ${entrada[$i]} -lt 4 ]
        then
            b=${entrada[$i]}
            pos=$i
        fi
    done
fi

echo "|-B val: $b i pos val $pos"

#ACTUALITZAM ELS VALORS TROBATS
if [ $b -ne -1 ]
then
    entrada[$pos]=-1
fi

echo "$a $b : $c $d"

########################################
#CERCAM LA POSICIÓ "C"
#POT SER DE 0 A 5
########################################
echo "BUCLE PER TROBAR POSICIONS DINS C"
echo "cerca dins array [ ${entrada[0]} , ${entrada[1]} , ${entrada[2]} ,  ${entrada[3]} ]"
for i in 0 1 2 3 
    do
    echo "|---miram la posició $i el valor de l'entrada és ${entrada[$i]} i el valor de a és $c i de pos és $pos"
        if [ $c -lt ${entrada[$i]} ] && [ ${entrada[$i]} -lt 6 ]
        then
            c=${entrada[$i]}
            pos=$i
        fi
    done
#ACTUALITZAM ELS VALORS TROBATS
if [ $c -ne -1 ]
then
    entrada[$pos]=-1
fi

echo "$a $b : $c $d"

########################################
#CERCAM LA POSICIÓ "D"
#POT SER DE 0 A 5
########################################
echo "BUCLE PER TROBAR POSICIONS DINS D"
echo "cerca dins array [ ${entrada[0]} , ${entrada[1]} , ${entrada[2]} ,  ${entrada[3]} ]"

for i in 0 1 2 3 
    do
    echo "|---miram la posició $i el valor de l'entrada és ${entrada[$i]} i el valor de a és $d i de pos és $pos"
        if [ $d -lt ${entrada[$i]} ]
        then
            d=${entrada[$i]}
            pos=$i
        fi
    done
#ACTUALITZAM ELS VALORS TROBATS
if [ $d -ne -1 ]
then
    entrada[$pos]=-1
fi
echo "-----------------"
echo "| $a $b : $c $d |"
echo "-----------------"
