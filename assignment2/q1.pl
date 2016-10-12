evenlist([X,Y]).
evenlist([X,Y|R]) :- evenlist(R), !.
