%Punto a
hombre(abraham).
hombre(herbert).
hombre(homero).
hombre(clancy).
hombre(bart).
mujer(marge).
mujer(patty).
mujer(selma).
mujer(lisa).
mujer(maggie).
mujer(mona).
mujer(jacqueline).
mujer(ling).
%Padres
padres(herbert,mona,abraham).
padres(homero,mona,abraham).
padres(marge,jacqueline,clancy).
padres(patty,jacqueline,clancy).
padres(selma,jacqueline,clancy).
padres(lisa,marge,homero).
padres(maggie,marge,homero).
padres(bart,marge,homero).
padres(ling,selma,desconocido).

%Punto b
%
%Hermanos/as
hermano(X,Y):-padres(X,Padre,Madre),padres(Y,Padre,Madre),hombre(Y),X\=Y.
hermana(X,Y):-padres(X,Padre,Madre),padres(Y,Padre,Madre),mujer(Y),X\=Y.

%Nietos/as
nieto(X,Y):-padres(X,Madre,_),padres(Madre,_,Y),hombre(X).
nieto(X,Y):-padres(X,_,Padre),padres(Padre,_,Y),hombre(X).
nieto(X,Y):-padres(X,Madre,_),padres(Madre,Y,_),hombre(X).
nieto(X,Y):-padres(X,_,Padre),padres(Padre,Y,_),hombre(X).
nieta(X,Y):-padres(X,Madre,_),padres(Madre,_,Y),mujer(X).
nieta(X,Y):-padres(X,_,Padre),padres(Padre,_,Y),mujer(X).
nieta(X,Y):-padres(X,Madre,_),padres(Madre,Y,_),mujer(X).
nieta(X,Y):-padres(X,_,Padre),padres(Padre,Y,_),mujer(X).

%Abuelos/as
abuelo(X,Y):-padres(Y,_,Padre),padres(Padre,_,X),hombre(X),X\=Y.
abuelo(X,Y):-padres(Y,Madre,_),padres(Madre,_,X),hombre(X),X\=Y.
abuela(X,Y):-padres(Y,_,Padre),padres(Padre,X,_),mujer(X),X\=Y.
abuela(X,Y):-padres(Y,Madre,_),padres(Madre,X,_),mujer(X),X\=Y.


%Tios/as
% tia(X,Y):-padres(X,MadreX,_),padres(MadreX,Madre,Padre),padres(Y,Madre,Padre),mujer(Y),X\=Y.
% tia(X,Y):-padres(X,_,PadreX),padres(PadreX,Madre,Padre),padres(Y,Madre,Padre),mujer(Y),X\=Y.
% tio(X,Y):-padres(X,MadreX,_),padres(MadreX,Madre,Padre),padres(Y,Madre,Padre),hombre(Y),X\=Y.
% tio(X,Y):-padres(X,_,PadreX),padres(PadreX,Madre,Padre),padres(Y,Madre,Padre),hombre(Y),X\=Y.

tia(X,Y):-padres(X,Madre,_),hermana(Madre,Y).
tio(X,Y):-padres(X,_,Padre),hermano(Padre,Y).


