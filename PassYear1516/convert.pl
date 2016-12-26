%write a prolog program, convert a list of celcius to fahrenheit
%formula = celcius * 9/5 + 32

get_message(Temp, Message) :- Temp >= 200, Message = ' Boiling hot!'.
get_message(Temp, Message) :- Temp >= 151, Message = ' Cannot stand! Extremely hot!'.
get_message(Temp, Message) :- Temp >= 71, Message = ' Very hot!'.
get_message(Temp, Message) :- Temp >= 41, Message = ' Nice!'.
get_message(Temp, Message) :- Temp >= 0, Message = ' Freezing!'.

find_temp([]).
find_temp([H|T]) :-
  TempInFah is H * 9/5 + 32,
  write(TempInFah),
  get_message(TempInFah, Message),
  writeln(Message),
  find_temp(T).

go :-
  writeln('Enter a list of temperature in celcius: '), readln(TempList),
  find_temp(TempList).
