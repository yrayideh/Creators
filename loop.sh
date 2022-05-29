echo while loop start
a=10
while [ $a -le 100 ]
do  
echo $a
a=`expr $a + 20`
done
echo loop ends
