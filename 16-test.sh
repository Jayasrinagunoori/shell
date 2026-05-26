#!/bin/bash

NUM1=$1
NUM2=$2

SUM=$(($(Num1)+$(Num2)))

echo "Sum of two numbers: $SUM"

# Array
MOVIES=("RRR" "VARANASI" "PUSHPA")

echo "Movies are : ${MOVIES[@]}"
echo "First Movie : ${MOVIES[0]}"
echo "Second Move : ${MOVIES[1]}"