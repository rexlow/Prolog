subject(prolog).
subject(lisp).
subject(oop).
logic(prolog).
logic(lisp).

likes(mary, X) :- logic(X), !, fail.
likes(mary, X) :- subject(X).
