grupo(1,brasil).
grupo(1,italia).
grupo(1,jamaica).
grupo(1,espa�a).
grupo(2,argentina).
grupo(2,nigeria).
grupo(2,escocia).
grupo(2,holanda).

son_rivales(X,Y):-grupo(Grupo,X),grupo(Grupo,Y),X\=Y.
