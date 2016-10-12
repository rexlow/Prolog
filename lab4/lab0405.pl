male(john).
male(david).
male(fred).
male(tom).
male(rex).
male(jason).

female(mary).
female(chloe).
female(joean).
female(elaine).
female(melissa).
female(julie).

parent(john, david).
parent(john, tom).
parent(david, fred).
parent(julie, fred).
parent(tom, rex).
parent(mary, rex).
parent(tom, joean).
parent(mary, joean).
parent(tom, elaine).
parent(mary, elaine).
parent(tom, melissa).
parent(mary, melissa).
parent(rex, jason).
parent(chloe, jason).

sibling(X, Y) :-
  parent(Z, X),
  parent(Z, Y),
  x \= y.

sister(X, Y) :-
  female(X),
  sibling(X, Y).

brother(X, Y) :-
  male(X),
  sibling(X, Y).

husband(X, Y) :-
  male(X),
  parent(X, Z),
  parent(Y, Z),
  X \= Y.

wife(X, Y) :-
  female(X),
  parent(X, Z),
  parent(Y, Z),
  X \= Y.

uncle(X, Y) :-
  male(X),
  parent(Z, Y),
  sibling(X, Z),
  X \= Z.

aunt(X, Y) :-
  wife(X, Z),
  uncle(Z, Y).

ancestor(X, Y) :-
  parent(Z, Y),
  parent(X, Z).

descendant(X, Y) :-
  parent(Y, Z),
  parent(Z, X).
