horoscopo(capricornio,21,12,19,01).
horoscopo(acuario,20,1,18,02).
horoscopo(piscis,19,2,20,03).
horoscopo(aries,21,3,20,04).
horoscopo(tauro,21,4,20,05).
horoscopo(geminis,21,5,20,06).
horoscopo(cancer,21,6,20,07).
horoscopo(leo,21,7,21,08).
horoscopo(virgo,22,8,22,09).
horoscopo(libra,23,9,22,10).
horoscopo(escorpio,23,10,22,11).
horoscopo(sagitario,23,11,20,12).


signo(Dia,Mes,Signo):-horoscopo(Signo,DiaInicio,MesInicio,_,_),Dia>=DiaInicio,Mes=MesInicio.
signo(Dia,Mes,Signo):-horoscopo(Signo,_,_,DiaFin,MesFin),Dia=<DiaFin,Mes=MesFin.
