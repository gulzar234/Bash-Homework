
#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: ./temp.sh <celsius>"
    exit 1
fi

c=$1

f=$((c * 9 / 5 + 32))

echo "${c}C = ${f}F"

if [ "$c" -lt 0 ]; then
    echo "Freezing"
elif [ "$c" -le 14 ]; then
    echo "Cold"
elif [ "$c" -le 29 ]; then
    echo "Warm"
else
    echo "Hot"
fi
