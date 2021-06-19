observa(maria,omar).
observa(laura,omar).
observa(maria,flavio).
observa(gabriela,flavio).
observa(maria,carlos).

observa_a_flavio_y_carlos(X):-observa(X,carlos),observa(X,flavio).
