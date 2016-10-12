parent_of(paul,petunia).
parent_of(helen,petunia).
parent_of(paul,lili).
parent_of(helen,lili).
parent_of(albert,james).
parent_of(ruth,james).
parent_of(petunia,dudley).
parent_of(vernon,dudley).
parent_of(lili,harry).
parent_of(james,harry).

ancestor_of(X,Y) :- parent_of(X,Y).
ancestor_of(X,Y) :-
  parent_of(X,Z),
  ancestor_of(Z,Y).
