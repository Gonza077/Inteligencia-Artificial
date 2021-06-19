hijo(juan,miguel).
hijo(jose,miguel).
hijo(miguel,roberto).
hijo(julio,roberto).
hijo(roberto,carlos).

descendiente(Per1,Per2):-hijo(Per1,Per2).
descendiente(Per1,Per2):-hijo(Per1,X),hijo(X,Per2).
