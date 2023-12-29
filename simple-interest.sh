#!/bin/bash

# Simple Interest Calculator

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    echo "Simple Interest: $interest"
}

# Input
read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest (in percentage): " rate
read -p "Enter Time (in years): " time

# Validate input (numeric values)
if [[ ! $principal =~ ^[0-9]+(\.[0-9]+)?$ || ! $rate =~ ^[0-9]+(\.[0-9]+)?$ || ! $time =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Error: Please enter valid numeric values for Principal, Rate, and Time."
    exit 1
fi

# Calculate and display simple interest
calculate_simple_interest $principal $rate $time
