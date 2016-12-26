% simple recursion
recurse([]).
recurse([H|T]) :-
  writeln(H),
  recurse(T).
