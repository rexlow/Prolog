count_Num([], 0).
count_Num([H|T], N) :-
	number(H),
	count_Num(T, N1),
	N is N1 + 1.
count_Num([H|T], N) :- count_Num(T, N).

