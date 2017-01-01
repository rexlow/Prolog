toy(barbie).
toy(snoppy).
toy(garfield).
anne_dislikes(barbie).

likes(anne, X) :- toy(X), not(anne_dislikes(X)).
