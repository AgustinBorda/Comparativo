/*Verifica si un elemento pertenece a una lista*/
pert(X,[X|_]) :- !.
pert(X,[_|YS]) :- pert(X,YS).

/*Devuelve la longitud de una lista*/
longitud([_|XS],N) :- longitud(XS,S), N is S+1.
longitud([],0).

/*Elimina un elemento de una lista*/
remove(X,[X|XS],XS) :- !.
remove(X,[Y|XS],[Y|ZS]) :- remove(X,XS,ZS).

/*devuelve la interseccion entre 2 conjuntos, denotados por listas*/
intersect([X|XS],YS,[X|ZS]) :- intersect(XS,YS,ZS),pert(X,YS).
intersect([X|XS],YS,ZS) :- intersect(XS,YS,ZS),not(pert(X,YS)).
intersect([],_,[]).

/*Multiplica todos los elementos de una lista por un numero dado*/
multLista([],_,[]).
multLista([X|XS],Y,[Z|YS]) :- multLista(XS,Y,YS), Z is X*Y.

/*Retorna si un conjunto es un subconjunto de otro, representando los conjuntos como listas ordenadas*/
subSet(_,[]).
subSet([X|XS],[X|YS]) :- subSet(XS,YS).
subSet([X|XS],[Y|YS]) :- subSet(XS,[Y|YS]),X\=Y.
