%custom findall

findall(X, Goal, Xlist) :-
  call(Goal),
  aseertz(queue(X)),
  fail;
  assertz(queue(bottom)),
  collect(Xlist).

collect(L) :-
  retract(queue(X)), !,
  (
    X == bottom, !, L = [];
    L = [X | Rest], collect(Rest)
  ).
