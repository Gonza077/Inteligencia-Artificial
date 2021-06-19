calculoSuma:-
write('Ingrese numero para calcular su suma --> '),read(X),
X>=1,
sum(X,SumPar,SumImpar),
write('La sumatoria de '),write(X),writeln(' descontado en una unidad hasta llegar a cero entre pares e impares es'),
write('Suma de numeros Pares: '),writeln(SumPar),
write('Suma de numeros Impares '),writeln(SumImpar).

sum(N,SumaPares,SumaImpares):-N=1,SumaImpares is 1,SumaPares is 0.
sum(N,Pares,Impares):-
N mod 2 =:= 0,Anterior is N-1,sum(Anterior,TotPares,TotImpares),Pares is N+TotPares,Impares is TotImpares.
sum(N,SumPares,SumImpares):-
N mod 2 =\= 0,Anterior is N-1,sum(Anterior,TotalPares,TotalImpares), SumImpares is N+TotalImpares,SumPares is TotalPares.
