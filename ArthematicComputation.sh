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

#sorting in decending order


for (( i = 0; i < $n ; i++ ))
do
	for (( j = $i; j < $n; j++ ))
	do
		if [ ${nos[$i]} -lt ${nos[$j]}  ]
		then
			t=${nos[$i]}
			nos[$i]=${nos[$j]}
			nos[$j]=$t
		fi
	done
done


echo ${outcomes[@]}

#sorting in ascending order

for (( i = 0; i <= 4 ; i++ ))
do
	for (( j = $i; j <= 4; j++ ))
	do
		if [ ${outcomes[$i]} -gt ${outcomes[$j]}  ]
		then
       			t=${outcomes[$i]}
       			outcomes[$i]=${outcomes[$j]}
       			outcomes[$j]=$t
      		fi
   	done
done


echo ${outcomes[@]}
