#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Nie podano żadnych argumentów"
    exit 1
fi

for arg in $@
do
    line_count=$(wc -l < $arg) # README_kompendium.txt/1.2.1
    echo "Plik $arg zawiera: $line_count linii."
done

# Wywołania:
# ./03-passing_arguments.sh /var/log/syslog /var/log/kern.log /var/log/auth.log
