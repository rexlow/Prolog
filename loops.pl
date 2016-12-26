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


%
%map
%
map_list(List) :-
  maplist(writeln, List).

%
%repeat
%
repeat_loop :-
  repeat,
  write('Enter command and . (type end. to exit): '),
  read(X),
  writeln(X), nl,
  X = end.
