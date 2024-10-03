#!/bin/bash

case $1 in
    poniedziałek) echo "rodacy do pracy";;
    piątek) echo "zaraz wolne";;
    sobota) echo "u cioci na imieninach";;
    niedziela) echo "do kościółka marsz";;
    *) echo "bez pracy nie ma kołaczy";;
esac