count_Atom([], 0).
count_Atom([H|T], N) :-
	atom(H),
	count_Atom(T, N1),
	N is N1 + 1.
count_Atom([H|T], N) :- count_Atom(T, N).
