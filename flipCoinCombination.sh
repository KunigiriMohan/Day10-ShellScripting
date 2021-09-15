#! /bin/bash
for ((i=0;i<=20;i++))
do
coin[i]=$((RANDOM%2))
      if [[ ${coin[i]} -eq 0 ]]
      then
         echo " Heads "
      else
         echo " Tails "
      fi
done
