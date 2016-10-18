customSelect(X, [X|T], T).
customSelect(X, [H|T], [H|T1]) :- customSelect(X, T, T1).
