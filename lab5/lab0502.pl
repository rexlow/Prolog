guess(A, [A|B], B).
guess(A, [H|T], [H|T1]) :- guess(A, T, T1).
