man(john).
man(fred).
man(harry).
woman(mary).
woman(julie).
woman(susan).
woman(anne).

dark_hair(fred).
dark_hair(harry).
blonde_hair(john).
blonde_hair(julie).
blonde_hair(susan).
brunette_hair(mary).
brunette_hair(anne).

like(X, Y) :-
  man(X),
  woman(Y),
  X \= Y.

like(X, Y) :-
  woman(X),
  man(Y),
  X \= Y.
