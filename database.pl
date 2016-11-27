:- dynamic lookup/3.
:- dynamic triple/3.

%checks the Prolog database to see if the calculation has already been made in the past.
add_and_square(X,Y,Res):-
  lookup(X,Y,Res), !.

%perform arithmetic calculation
add_and_square(X,Y,Res):-
  Res is (X+Y)*(X+Y),
  assert(lookup(X,Y,Res)).

add_and_triple(X,Y,Res):-
  triple(X,Y,Res), !.

add_and_triple(X,Y,Res):-
  Res is (X+Y)*(X+Y)*(X+Y),
  assert(triple(X,Y,Res)).
