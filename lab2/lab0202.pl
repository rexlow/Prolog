male(tom).
male(david).
male(john).
male(patrick).
female(ann).
female(marie).
female(mary).

parent(tom, john).
parent(david, patrick).
parent(tom, mary).
parent(marie, tom).
parent(ann, john).
parent(marie, david).
parent(ann, mary).

son(X, Y) :-
  parent(Y, X),
  male(X).

sister(X, Y) :-
  female(X),
  parent(Z, X),
  parent(Z, Y),
  X \= Y.

sibling(X, Y) :-
  parent(Z, X),
  parent(Z, Y),
  X \= Y.

cousin(X, Y) :-
  parent(Z, Y),
  sibling(W, Z),
  son(X, W).

uncle(X, Y) :-
  cousin(Z, Y),
  parent(X, Z),
  male(X).
