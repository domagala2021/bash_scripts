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

if [ $# -eq 0 ]; then
    echo "Nie podano żadnych argumentów"
    exit 1
fi

for arg in $@
do
    position=$(expr index "$arg" "$char")
    if [ $position -ne 0 ]; then
        echo ${arg:0:$position-1}
    fi
done


# Wywołania:
# ./03-passing_arguments.sh $(env)