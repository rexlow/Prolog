go :-
  write("enter a number: "),
  read(Input),
  calculate(Input).

calculate(Input) :-
  (
    Input == 0 -> write('You entered a zero'), !;
    Remainder is mod(Input, 2),
    (
      Remainder == 0 -> write('Its even');
      write('Its odd')
    )
  ).
