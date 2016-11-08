count_atom([], 0).
count_atom([H|T], N) :-
  atom(H), !,
  count_atom(T, N1),
  N is N1 + 1.
count_atom([H|T], N) :-
  count_atom(T, N).
