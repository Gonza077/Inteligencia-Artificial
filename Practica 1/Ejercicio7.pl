menu:-writeln("Ingrese el primer numero"),read(Num1),
    writeln("Ingrese el segundo numero"),read(Num2),
    writeln("1 - Para sumar"),
    writeln("2 - Para restar"),
    writeln("3 - Para multiplicar"),
    writeln("4 - Para dividir"),
    writeln("5 - Para salir"),
    read(Opc),
    Opc\=5,
    opcion(Opc,Num1,Num2),
    menu.

menu:-writeln("Gracias por usar el programa").

opcion(1,Num1,Num2):-Suma is Num1+Num2,write("El resultado es: "),writeln(Suma).
opcion(2,Num1,Num2):-Resta is Num1-Num2, write("El resultado es: "),writeln(Resta).
opcion(3,Num1,Num2):-Mult is Num1*Num2, write("El resultado es: "),writeln(Mult).
opcion(4,Num1,Num2):-Div is Num1/Num2, write("El resultado es: "),writeln(Div).



