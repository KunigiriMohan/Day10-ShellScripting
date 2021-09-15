#! /bin/bash
declare -A Dictionary

for ((i=0;i<=50;i++))
do
coin[i]=$((RANDOM%2))
      if [[ ${coin[i]} -eq 0 ]]
      then
         count=$(($count+1))
      else
         count2=$(($count2+1))
      fi
done

percentage_of_heads=$((100*$count/${#coin[*]}))
percentage_of_tails=$((100*$count2/${#coin[*]}))


echo "percentage of Heads is "$percentage_of_heads
echo "percentage of tails is "$percentage_of_tails


Dictionary[singlet]=${coin[@]}
