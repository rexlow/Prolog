count(X, [], 0).
count(X, [H|T], N) :-
	X==H,
	count(X, T, N1),
	N is N1 + 1.
count(X, [H|T], N) :- count(X, T, N).
