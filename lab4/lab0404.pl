oddlist([X]).
oddlist([X,Y|R]) :- oddlist(R),!.
