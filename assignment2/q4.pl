%part a
%question a1
?-movie(avenger,X).

%question a2
?-movie(X, 2015).

%question a3
?-movie(X,Y), Y<2000.

%question a4
?-actor(M1, X, _), actor(M2, X, _), M1\=M2.

%question a5
?-director(X, Y),actress(X, scarlett_johansson).

%part b
%question b1
release_since(M, X) :- movie(M, X).

%question b2
release_between(M, X, Y) :-
  movie(M, A), X is A-1, movie(M, Y).

%question b3
same_year_as(M1, M2) :-
  movie(M1, X), movie(M2, X).

%question b4
newer(M1, M2) :-
  movie(M1, X), movie(M2, Y), X>Y.

%question b5
cast_member(A, M) :-
  actor(M, A, _); actress(M, A, _).

%question b6
µ
