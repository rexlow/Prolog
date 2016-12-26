%
% simple recursion
%
recurse([]).
recurse([H|T]) :-
  writeln(H),
  recurse(T).

%
%failure driven loop
%
fail_driven(List) :-
  member(X, List),
  writeln(X),
  fail.
fail_driven(_).
