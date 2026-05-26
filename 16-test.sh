#!/bin/bash

# Read numbers from user
echo "Enter first number:"
read NUM1

echo "Enter second number:"
read NUM2

# Calculate sum
SUM=$((NUM1 + NUM2))

echo "Sum of two numbers: $SUM"

# Read movie names
echo "Enter first Movie name:"
read Movie0

echo "Enter second Movie name:"
read Movie1

echo "Enter third Movie name:"
read Movie2

# Store values in array
MOVIES=("$Movie0" "$Movie1" "$Movie2")

# Display array values
echo "Movies are: ${MOVIES[@]}"
echo "First Movie: ${MOVIES[0]}"
echo "Second Movie: ${MOVIES[1]}"
echo "Third Movie: ${MOVIES[2]}"