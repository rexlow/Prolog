enjoys(vincent, X) :- burger(X), \+bigSwissBurger(X).

burger(X) :- bigMac(X).
burger(X) :- bigSwissBurger(X).
burger(X) :- whopper(X).

bigMac(a).
bigSwissBurger(b).
bigMac(c).
whopper(d).
