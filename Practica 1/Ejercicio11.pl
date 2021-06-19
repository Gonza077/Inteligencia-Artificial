calculoFactorial:-
write('Ingrese numero para calcular su factorial --> '),read(X),
X>=0,
factorial(X,Respuesta),
write('El factorial de '),write(X),write(' es: '),writeln(Respuesta).

factorial(0,1).
factorial(N,Respuesta):- Ant is N-1,factorial(Ant,ValorAnterior), Respuesta is ValorAnterior * N.
