male(tom).
male(david).
male(john).
male(patrick).
male(kelvin).
female(ann).
female(marie).
female(tracy).
female(kelly).
female(brenda).
female(jenny).
sibling(tom,david).
sibling(david,tom).
sibling(tracy,john).
sibling(john,tracy).
sibling(kelvin,jenny).
sibling(jenny,kelvin).
parent(marie,tom).
parent(marie,david).
parent(tom,john).
parent(ann,john).
parent(tom,tracy).
parent(ann,tracy).
parent(david,patrick).
parent(kelly,patrick).
parent(john,jenny).
parent(john,kelvin).
parent(brenda,jenny).
parent(brenda,kelvin).

father(X,Y) :- male(X),parent(X,Y).
mother(X,Y) :- female(X),parent(X,Y).
brother(X,Y) :- male(X),sibling(X,Y).
sister(X,Y) :- female(X),sibling(X,Y).
husband(X,Y) :- male(X),parent(X,Z),parent(Y,Z).
wife(X,Y):-female(X),parent(X,Z),parent(Y,Z).
aunt(X,Z):- sister(X,Y),parent(Y,Z);wife(X,Y),uncle(Y,Z).
uncle(X,Z):- brother(X,Y),parent(Y,Z);husband(X,Y),aunt(Y,Z).
ancestor(X,Z):-parent(X,Y),parent(Y,Z).
ancestor(X,Z):-parent(X,Y),ancestor(Y,Z).
descendent(X,Z):-parent(Z,Y),parent(Y,X).
descendent(X,Z):-parent(Z,Y),descendent(X,Y).


