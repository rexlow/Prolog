%negation as failure can also be rewritten with not.

subject(prolog).
subject(lisp).
subject(prog_tech).
subject(data_struct).
subject(oop).
subject(database).
logic(prolog).
logic(lisp).

likes(jerry, X) :- subject(X), not(logic(X)).
