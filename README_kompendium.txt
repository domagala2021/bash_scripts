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



2. Operatory

2.1 Operatory arytmetyczne (+, -, *, /, %)

2.2 Operatory porównań

2.2.1 Porównania liczb całkowitych

Równe (-eq)
Różne (-ne)
Mniejsze niż (-lt)
Mniejsze lub równe (-le)
Większe (-gt)
Większe lub równe (-ge)

2.2.2 Porównania tekstowe

Równe (=)
Różne (!=)
Sprawdzenie czy ciąg jest pusty (-z)
Sprawdzenie czy ciąg nie jest pusty (-n)

2.3 Operatory logiczne

operacja logiczna AND (&&)
operacja logiczna OR (||)
negacja (!)

2.4 Operatory porównań w [[ ... ]]

AND (logika) (&&)
OR (logika) (||)
Równe (tekst) (==)
Różne (tekst) (!=)
Sprawdzanie istnienia pliku (-e)
Sprawdzanie, czy jest katalogiem (-d)

2.5 Operatory bitowe

AND bitowy (&)
OR bitowy (|)
XOR bitowy (^)
Negacja bitowa (~)
Przesunięcie bitowe w lewo (<<)
Przesunięcie bitowe w prawo (>>)

2.6 Operatory przekierowania (Redirect operators)

Operatory przekierowania w Bashu pozwalają na elastyczne zarządzanie danymi wejściowymi i wyjściowymi, co jest niezbędne do efektywnego pisania skryptów i zarządzania danymi w systemie operacyjnym. 
Pozwalają one na przekierowanie danych między plikami, strumieniami i poleceniami.

2.6.1 Przekierowanie wyjścia (>) (Regular output > operator / Output redirector)

Przekierowuje standardowe wyjście (stdout) do pliku, nadpisując jego zawartość. 
Jeśli plik nie istnieje, zostanie utworzony.
echo "Hello, World!" > output.txt

2.6.2 Przekierowanie wyjścia (>>) (Regular output append >> operator)

Przekierowuje standardowe wyjście do pliku, dodając dane na końcu pliku (append). 
Jeśli plik nie istnieje, zostanie utworzony.
echo "Append this line" >> output.txt

2.6.3 Przekierowanie wejścia (<) (Regular input < operator)

Przekierowuje standardowe wejście (stdin) z pliku. 
Używane, gdy chcesz, aby program odczytywał dane z pliku zamiast z klawiatury.
sort < input.txt

2.6.4 Przekierowanie błędów (2>) (Regular error 2> operator)

Przekierowuje standardowy strumień błędów (stderr) do pliku, nadpisując jego zawartość.
ls non_existing_file 2> error.log
Wszystkie błędy związane z próbą wylistowania nieistniejącego pliku zostaną zapisane do pliku error.log.

2.6.5 Przekierowanie błędów (2>>)

Przekierowuje standardowy strumień błędów (stderr) do pliku, dodając błędy na końcu pliku.
ls non_existing_file 2>> error.log
W tym przykładzie błędy będą dodane do końca pliku error.log.

2.6.6 Przekierowanie zarówno błędów, jak i błędów (&>)

Przekierowuje zarówno standardowe wyjście, jak i standardowy strumień błędów do tego samego pliku, nadpisując jego zawartość.
command &> output_and_errors.log
W tym przykładzie zarówno standardowe wyjście, jak i błędy polecenia zostaną zapisane do pliku output_and_errors.log.

2.6.7 Przekierowanie zarówno błędów, jak i błędów (&>>)

Przekierowuje zarówno standardowe wyjście, jak i standardowy strumień błędów do tego samego pliku, dodając dane na końcu pliku.
command &>> output_and_errors.log
W tym przykładzie zarówno standardowe wyjście, jak i błędy zostaną dodane na końcu pliku output_and_errors.log.

2.6.8 Przekierowanie strumieni do i z procesów (|) (Pipe | operator)

Przekierowuje standardowe wyjście jednego polecenia jako standardowe wejście do innego polecenia. 
To jest znane jako pipe.
ls | grep "file"
W tym przykładzie wynik polecenia ls jest przekazywany do polecenia grep, które filtruje linie zawierające słowo "file".

2.6.9 Przekierowanie strumieni do i z plików specjalnych (<<<)

Przekierowuje ciąg znaków jako standardowe wejście do polecenia. Jest to tzw. here-string.
grep "pattern" <<< "some text"
W tym przykładzie "some text" jest przekazywane jako standardowe wejście do polecenia grep.