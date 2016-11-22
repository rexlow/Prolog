ain:-
  write('Hello, please enter C1 value: '), read(C1),
  write('Hello, please enter C2 value: '), read(C2),
  find_factor(C1,C2,CF),
  write('Certainly factor CF is : '),
  write(CF).

find_factor(C1, C2,CF):-
  C1 >= 0, C2 >= 0,
  CF is C1+C2-C1*C2, !.

find_factor(C1, C2,CF):-
  C1 < 0, C2 < 0,
  CF is C1+C2+C1*C2, !.

find_factor(C1,C2,CF):-
  CF is C1+C2 / (1-min(abs(C1),abs(C2))), !.
