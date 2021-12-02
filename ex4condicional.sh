#Ex condicinal 4
#Bel Santandreu Nadal

num=$((RANDOM%11))
echo $num

n=$((RANDOM%11))
echo $n

if test $num -gt $n
then
echo "El primer nombre és més gran"
fi
 if test $n -gt $num
then
echo "El primer nombre és més petit"
fi
if test $n -eq $num
then
echo " Son iguals"
fi
