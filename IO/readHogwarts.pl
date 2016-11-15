main :-
  open('hogwarts.txt', read, S),
  readHouses(S, Houses),
  close(S),
  write(Houses), nl.

readHouses(S, []) :-
  at_end_of_stream(S), !.

readHouses(S, [X|L]) :-
  \+ at_end_of_stream(S), !,
  read(S,X),
  readHouses(S, L).
