calculoSuma:-
write('Ingrese numero para calcular su suma --> '),read(X),
X>=1,
sum(X,Respuesta),
write('La suma de '),write(X),write(' descontado en una unidad hasta cero es : '),writeln(Respuesta).

sum(1,1).
sum(N,Sum):- Ant is N-1,sum(Ant,ValorAnterior), Sum is ValorAnterior + N.
