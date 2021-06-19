necesita(a,c).
necesita(c,d).
necesita(b,d).
necesita(d,e).
necesita(e,h).
necesita(e,i).
necesita(b,f).
necesita(f,g).
necesita(h,j).
necesita(i,j).
necesita(g,j).

requiere_de(X,Y):-necesita(X,Y).
requiere_de(X,Y):-necesita(Tarea,Y),requiere_de(X,Tarea).
