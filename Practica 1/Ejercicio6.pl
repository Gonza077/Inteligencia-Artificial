 %roles
rol(carolina,guitarrista).
rol(jose,guitarrista).
rol(miguel,guitarrista).
rol(mariano,cantante).
rol(silvia,cantante).
rol(eduardo,baterista).
rol(diego,baterista).
rol(laura,baterista).
rol(mauro,cantante).

%personas
persona(carolina,rosario).
persona(jose,rosario).
persona(miguel,funes).
persona(mariano,rosario).
persona(silvia,funes).
persona(eduardo,roldan).
persona(diego,casilda).
persona(laura,rosario).
persona(mauro,funes).

se_forma_banda(Ciudad):-persona(Per1,Ciudad),rol(Per1,guitarrista),persona(Per2,Ciudad),rol(Per2,baterista),persona(Per3,Ciudad),rol(Per3,cantante),Per1\==Per2,Per1\==Per3,Per2\==Per3.
