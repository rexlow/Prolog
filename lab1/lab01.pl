mother(pam, bob).
mother(pat, jim).

father(tom, bob).
father(tom, liz).
father(bob, ann).
father(bob, pat).

parent(Parent, Child) :-
  father(Parent, Child);
  mother(Parent, Child).

child(Child, Parent) :-
  parent(Parent, Child).

grandmother(Grand, Parent, Child) :-
  mother(Grand, Parent),
  child(Child, Parent).

grandfather(Grand, Parent, Child) :-
  father(Grand, Parent),
  child(Child, Parent).
