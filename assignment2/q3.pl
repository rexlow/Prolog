ascending([L]).
ascending([H|[H1|T]]) :-
  H =< H1,
  ascending([H1|T]).
