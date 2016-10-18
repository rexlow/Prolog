test_type(X) :- atom(X), writeln('Atom').
test_type(X) :- number(X), writeln('Number').
test_type(X) :- float(X), writeln('Float').
test_type(X) :- var(X), writeln('Var').

read_type(X) :-
  write('Please enter something: '),
  read(X),
  test_type(X).
