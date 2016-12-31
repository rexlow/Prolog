%demonstrate how to use negation as failure with fail.

subject(prolog).
subject(lisp).
subject(prog_tech).
subject(data_struct).
subject(oop).
subject(database).
logic(prolog).
logic(lisp).

likes(jerry, X) :- logic(X), !, fail.
likes(jerry, X) :- subject(X).
