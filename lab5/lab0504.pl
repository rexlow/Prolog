grade(Mark, "A") :- Mark >= 80.
grade(Mark, "B") :- Mark >= 70, Mark < 80.
grade(Mark, "C") :- Mark >= 60, Mark < 70.
grade(Mark, "D") :- Mark >= 50, Mark < 60.
grade(Mark, "E") :- Mark < 50.

calculate([]).
calculate([H|T]) :-
  grade(H, Gred),
  write(H), write(" "), writeln(Gred),
  calculate(T).
