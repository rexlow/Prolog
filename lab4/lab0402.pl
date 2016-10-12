printlist([]).
printlist([H|T]) :-
  writeln(H), printlist(T).
