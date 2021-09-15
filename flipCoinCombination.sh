#! /bin/bash
declare -A Dictionary

for ((i=0;i<=50;i++))
do
coin[i]=$((RANDOM%2))
coin2[i]=$((RANDOM%2))
coin3[i]=$((RANDOM%2))
      if [[ ${coin[i]} -eq 0 ]]
      then
         count=$(($count+1))
      else
         count2=$(($count2+1))
      fi

      if [[ ${coin2[i]} -eq 0 ]]
      then
         count=$(($count+1))
      else
         count2=$(($count2+1))
      fi

      if [[ ${coin3[i]} -eq 0 ]]
      then
         count=$(($count+1))
      else
         count2=$(($count2+1))
      fi


done

percentage_of_heads=$((100*$count/$((${#coin[*]}+${#coin2[*]}+${#coin3[*]}))))
percentage_of_tails=$((100*$count2/$((${#coin[*]}+${#coin2[*]}+${#coin3[*]}))))


echo "percentage of Heads is "$percentage_of_heads
echo "percentage of tails is "$percentage_of_tails


Dictionary[Triplet1]=${coin[@]}
Dictionary[Triplet2]=${coin2[@]}
Dictionary[Triplet3]=${coin3[@]}




