#! /usr/bin/env bash

# When the program is first loaded, display a greeting to the user.
let sum=0
while [[ $sum -lt 10 ]]; do

  echo "Start Calculating"
  # Then, display a menu that outlines the possible operations:
    # Add
    # Subtract
    # Exit

    # Input type of operation
  echo "Enter Choice :"
  echo "1. Addition"
  echo "2. Subtraction"
  echo "3. Exit"

  read ch

  # Then, capture the user selection.
  case $ch in
  1)echo "Enter Two numbers : "
  read a
  read b
  res=`echo $a + $b | bc`
  echo "Result : $res"
  ;;
  2)echo "Enter Two numbers : "
  read a
  read b
  res=`echo $a - $b | bc`
  echo "Result : $res"
  ;;
  3)exit
  ;;
  *)echo "Error: Unknown command"
  ;; 
  esac
done

  


