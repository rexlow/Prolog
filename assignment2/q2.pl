last_two([X,Y], X, Y).
last_two([_|T], X, Y) :-
  last_two(T, X, Y).
