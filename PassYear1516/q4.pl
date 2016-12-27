%i
%post this query ?- mystery(3, [e, d, c, b, a], X).
mystery(1, [X|L], X).
mystery(N, [Y|L], X) :-
  N1 is N-1,
  mystery(N1, L, X).

%ii
%post this query ?- guess(c, [a, b, c, d, e], X).
guess(A, [A|B], B).
guess(A, [H|T], [H|T1]) :-
  guess(A, T, T1).

%iii
%post this query ?- what([a, b, 4, d, 3, a(b, c)], X).
what([H|_], H) :- number(H), !.
what([_|T], S) :- what(T, S).
