#!/bin/bash

# Do skryptu jest przekazana lista zmiennych środowiskowych.
# Lista zmiennych jest przekazana przy użyciu polecenia env,
# które służy do wyświetlenia zmiennych środowiskowych aktualnie ustawionych dla sesji powłoki.
# Każda linia z listy zawiera definicję jednej zmiennej środowiskowej
# Jednakże niektóre zmienne środowiskowe zwierają spacje,
# co powoduje że w jednej linii mogą być dwa i więcej argumentów przekazywanych do skryptu.
# Ponieważ zadaniem skryptu jest wypisanie jedynie nazw zmiennych
# pobierana jest jedynie część linii do znaku "=".
# Tym samym analizowane są tylko argumenty zawierające znak "="

char="="
temp_filename="env_variables.txt"

if [ $# -eq 0 ]; then
    echo "Nie podano żadnych argumentów"
    echo "./04-passing_arguments.sh \$(env)"
    exit 1
fi

for arg in $@
do
    position=$(expr index "$arg" "$char") # README_kompendium.txt/1.2.1
    if [ $position -ne 0 ]; then #README_kopendium.txt/2.2.1
        echo ${arg:0:$position-1} >> $temp_filename
    fi
done

sort < $temp_filename
rm $temp_filename