#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Nie podano żadnych argumentów"
    echo "Przykładowe wywołanie: ./03-passing_arguments.sh /var/log/syslog /var/log/kern.log /var/log/auth.log"
    exit 1
fi

for arg in $@
do
    line_count=$(wc -l < $arg) # README_kompendium.txt/1.2.1 README_kompendium.txt/2.6.3
    echo "Plik $arg zawiera: $line_count linii."
done