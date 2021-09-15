#! /bin/bash
declare -A Dictionary

for ((i=0;i<=50;i++))
do
coin[i]=$((RANDOM%2))
coin2[i]=$((RANDOM%2))
coin3[i]=$((RANDOM%2))
      if [[ ${coin[i]} -eq 1 && ${coin2[i]} -eq 1 && ${coin3[i]} -eq 1 ]]
      then
         count=$(($count+1))
         flip[i]="HHH"
      else
         count2=$(($count2+1))
         flip[i]="TTT"
      fi


done

percentage_of_heads=$((100*$count/$((${#coin[*]}+${#coin2[*]}+${#coin3[*]}))))
percentage_of_tails=$((100*$count2/$((${#coin[*]}+${#coin2[*]}+${#coin3[*]}))))


echo "percentage of Heads is "$percentage_of_heads
echo "percentage of tails is "$percentage_of_tails


Dictionary[Triplet]=${flip[@]}
echo ${Dictionary[@]}
