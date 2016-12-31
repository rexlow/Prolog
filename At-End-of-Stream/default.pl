main :-
  open('houses.txt', read, Stream),
  readContent(Stream, Houses),
  close(Stream),
  write(Houses), nl.

readContent(Stream, []) :-
  at_end_of_stream(Stream).

readContent(Stream, [H|T]) :-
  \+ at_end_of_stream(Stream),
  read(Stream, H),
  readContent(Stream, T).
