shorter(bob, mike).
shorter(mike, jim).
shorter(jim, george).

lower(X, Y) :- shorter(X, Y).
lower(X, Y) :-
  shorter(X, Z),
  lower(Z, Y).
