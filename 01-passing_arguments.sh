#!/bin/bash

echo "do skryptu $0 przekazano:"
echo "argument pierwszy: $1"
echo "argument drugi: $2"
echo "argument trzeci: $3"

echo "Argumenty przekazane do skryptu: $@"
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
