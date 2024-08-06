#!/bin/bash

echo "Do skryptu $0 przekazano:"
echo "argument nr 1: $1"
echo "argument nr 2: $2"
echo "argument nr 3: $3"

echo -e
echo "Liczba przekazanych argumentów: $#"

# Iteracja argumentów przekazywanych do skryptu - for loop

echo -e

if [ $# -eq 0 ]; then
    echo "Nie podano żadnych argumentów"
    exit 1
fi

lp=1

for arg in $@
do
    echo "argument nr $lp:" $arg
    lp=$((lp + 1))
done

# Wywołania:
# ./01-passing_arguments.sh 90 file.txt user@gmail.com