#!/bin/bash
if [ $# -ne 2 ]; then
    echo "Usage: ./convert.sh <number> <unit>"
    exit 1
fi
number=$1
unit=$2
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Number must not be negative"
    exit 3
fi
unit=$(echo "$unit" | tr '[:upper:]' '[:lower:]')
case $unit in
    km)
        result=$((number * 1000))
        echo "$number km = $result m"
        ;;
    m)
        result=$((number * 100))
        echo "$number m = $result cm"
        ;;
    h)
        result=$((number * 60))
        echo "$number h = $result min"
        ;;
    min)
        result=$((number * 60))
        echo "$number min = $result s"
        ;;
    kg)
        result=$((number * 1000))
        echo "$number kg = $result g"
        ;;
    *)
        echo "Unknown unit: $unit"
        echo "Units: km m h min kg"
        exit 2
        ;;
esac