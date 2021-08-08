#!/bin/bash
#my_favorite_states=('Nebraska' 'Hawaii' 'California' 'Texas' 'Florida')
#for state in ${my_favorite_states[@]}
#do
#echo $state
#   if [ $state == 'Hawaii' ];
#   then
#    echo "Hawaii is the best!"
#   else
#    echo "Not my favorite state."
#fi
#done

#my_numbers=$(echo {0..9})
#for number in ${my_numbers[@]}
#do
#  if [ $number = 3 ] || [ $number = 5 ] || [ $number = 7 ]
#  then
#   echo $number
#  fi
#done
#ls_out=$(ls)
#for x in ${ls_out[@]}
#do
#echo $x
#done

# Bonus 1 
#for user in $(ls /home)
#  do
#    sudo -lU $user
#done

# Bonus 2 Activity 6.2c
date_names=(
  'date'
  'uname -a'
  'hostname -s'
)

for cmd in {0..2}
do
  output=$(${date_names[$cmd]})
  echo "Results of \"${date_names[$cmd]}\" command:"
  echo $output
  echo ""
done
