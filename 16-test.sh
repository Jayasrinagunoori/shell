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

echo "Enter first Movie name:"

read Movie0

echo "Enter Second name :"

read Movie1

echo "Enter Third Movie number:"

read Movie2

MOVIES=("Movie0" "Movie1" "Movie2")

echo "Movies are: ${MOVIES[@]}"
echo "First Movie: ${MOVIES[0]}"
echo "Second Movie: ${MOVIES[1]}"