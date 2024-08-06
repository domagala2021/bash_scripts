#!/bin/bash

# Ten skrypt również pobiera argumenty wejściowe (positional parameters) z linii poleceń (command line),
# argumenty wejściowe są pobierane w pętli for (for loop)
# przy użyciu zmiennych specjalnych (special parameters)
# i wypisuje je na standardowe wyjście (standard output)
#
# Zastosowana pętla for posiada składnie jak w języku C (C-style for loop)
# i została zbudowana z wykorzystaniem elementu składni Basha - podwójnego nawiasu okrągłego (README_komendium.txt/1.1)

if [ $# -eq 0 ]; then
    echo "Nie podano żadnych argumentów"
    exit 1
fi

for (( i = 1; i <= $#; i++ )) # README_komendium.txt/1.1
do
    arg1=\$$i
    eval arg2=\$$i

    echo "argument nr $i: $arg1"
    echo "argument nr $i: $arg2"
    echo
done

# Wywołania:
# ./02-passing_arguments.sh 8 9 0 7