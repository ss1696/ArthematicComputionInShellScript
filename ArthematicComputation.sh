#!/bin/bash -x

echo "Enter three number"
read a b c 

result1=$(($a+$b*$c))
result2=$(($a*$b+$c))
result3=$(($c+$a/$b))
result4=$(($a%$b+$c))

#storing above result in dictionary
declare -a comptn
comptn[1]=$result1
comptn[2]=$result2
comptn[3]=$result3
comptn[4]=$result4

#storing dictionary values in array
for (( i=1; i<=4; i++ ))
do

	outcomes[((count++))]=${comptn[$i]}

done

echo ${outcomes[@]}

