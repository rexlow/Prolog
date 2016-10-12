member(Head, [Head|Tail]).
member(X, [Head|Tail]) :- member(X, Tail).
