%Caso 1
viajes_zona(ciudad1,ciudad2).
viajes_zona(ciudad1,ciudad6).
viajes_zona(ciudad3,ciudad4).
viajes_zona(ciudad3,ciudad5).
viajes_zona(ciudad5,ciudad4).
viajes_zona(ciudad5,ciudad7).
viajes_zona(ciudad6,ciudad7).
viajes_zona(ciudad8,noTiene).
viajes_zona(ciudad9,noTiene).

conexion(A,B):-viajes_zona(A,B).
conexion(A,B):-viajes_zona(A,X),conexion(X,B).