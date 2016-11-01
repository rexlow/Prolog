meaning(one, un).
meaning(two, deux).
meaning(three, trois).
meaning(four, quatre).
meaning(five, cinq).
meaning(six, six).
meaning(seven, sept).
meaning(eight, huit).
meaning(nine, neuf).
meaning(ten, dix).

translate([], []).
translate([H|T], [NewH|NewT]) :-
  meaning(H, NewH),
  translate(T, NewT).

main :-
  write('Enter a sentence: '),
  readln(X),
  translate(X, NewX),
  atomic_list_concat(NewX, ' ', Final),
  write('Its translation is: '),
  write(Final).
