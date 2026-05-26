#!/bin/bash

# Read numbers from user
echo "Enter first number:"
read NUM1

echo "Enter second number:"
read NUM2

# Calculate sum
SUM=$((NUM1 + NUM2))

echo "Sum of two numbers: $SUM"

# Array
MOVIES=("RRR" "VARANASI" "PUSHPA")

echo "Movies are: ${MOVIES[@]}"
echo "First Movie: ${MOVIES[0]}"
echo "Second Movie: ${MOVIES[1]}"