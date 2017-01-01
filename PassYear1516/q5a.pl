find_grade(Marks, 'A') :- Marks >= 95, Marks =< 100.
find_grade(Marks, 'B') :- Marks >= 85, Marks < 95.
find_grade(Marks, 'C') :- Marks >= 75, Marks < 85.
find_grade(Marks, 'D') :- Marks >= 65, Marks < 75.
find_grade(Marks, 'E') :- Marks >= 0, Marks < 65.
find_grade(_, 'Error, please enter mark ranges from 0 - 100').

go :-
  write('Enter your mark and I will grade you: '),
  read(Input),
  find_grade(Input, Grade),
  write('Grade: '), write(Grade).
