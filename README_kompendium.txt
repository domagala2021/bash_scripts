1. Nawiasy okrągłe

1.1 Podwójne nawiasy okrągłe

Podwójne nawiasy okrągłe (( ... )) w Bashu służą do:

- operacji arytmetycznych		    (operatory: =, +, -, *, /, %, +=, -=, *=, /=)
- porównań numerycznych			    (operatory: ==, !=, <, >, <=, >=),
- inkrementacji i dekrementacji		(operatory: ++, --)
- w połączeniu z pętlą "while"		(oceniają warunek pętli)
- w połączeniu z instrukcją "if"	(oceniają warunek numeryczny)
- w połączeniu z pętlą "for"		(pozwalają na bezpośrednie użycie operatorów arytmetycznych i logicznych wewnątrz pętli 
					                - jest to bardzo wygodne dla pętli, które działają na liczbach i wymagają arytmetyki)
                					(definiują inicjalizację(init), warunek(condition) oraz inkrementację(increment))

Średniki w Bashu są używane do oddzielenia komend w jednej linii.
Znajduje to zastosowanie w pętli for mającej składnie języka C (C-style for loop)

1.2 Pojedyncze nawiasy okrągłe

1.2.1 Podstawianie wyniku polecenia (command substitution)

Polecenia zawarte w wyrażeniu $( ... ) są wykonywane, a ich wynik jest podstawiany w miejscu wyrażenia.