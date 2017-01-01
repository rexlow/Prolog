citizen(X).
saving(X, Amount).
married(X, Y).
commit_crime(X, Y).

%i
eligible_buying_bungalow(X) :-
  citizen(X),
  saving(X, Y), Y >= 250000;
  married(X, Y), citizen(Y),
  not(commit_crime(X, _)).

%ii
eligible_buying_bungalow(X) :- commit_crime(X), !, fail.
eligible_buying_bungalow(X) :-
  citizen(X),
  saving(X, Y), Y >= 250000;
  married(X, Y), citizen(Y).
