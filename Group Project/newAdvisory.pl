main :-
  welcome,
  abolish(generalPreference/1),
  abolish(indoor/1),
  abolish(outdoor/1),
  dynamic(generalPreference/1),
  dynamic(indoor/1),
  dynamic(outdoor/1),
  ask_general_interest, %store user general preference into database
  hGP,
  show_places,
  undo.

welcome:-
  write('Welcome to Trip Advisory System'), nl,
  write('Answer a few questions and we will suggest you some places to go to'), nl,
  write('Enjoy!'), nl, nl.

%ask general preferences
ask_general_interest :-
  write('1- Indoor.'), nl,
  write('2- Outdoor.'), nl,
  write('0- Exit.'), nl,
  write('Do you prefer indoor or outdoor: '),
  readln(X),
  atomic_list_concat(X, '', Y), nl,
  (
    Y == '1' -> !, writeln('Alright! You will see more indoor activities from now on!'), assert(generalPreference(Indoor));
    Y == '2' -> !, writeln('Alright! You will see more outdoor activities from now on!'), assert(generalPreference(Outdoor));
    Y == '0' -> !, writeln('See you again, bye!');
    writeln('Invalid input')
  ).

%hypothesizeGeneralPreferences - hGP
hGP :- baba_nyonya_heritage_melaka.
hGP :- pinang_peranakan_mansion.
hGP :- chinatown_kl.

baba_nyonya_heritage_melaka :-
  generalPreference(Indoor),
  assert(indoor(baba_nyonya_heritage_melaka)).

pinang_peranakan_mansion :-
  generalPreference(Indoor),
  assert(indoor(pinang_peranakan_mansion)).

chinatown_kl :-
  generalPreference(Outdoor),
  assert(outdoor(chinatown_kl)).

show_places :-
  (
    generalPreference(Indoor) -> listing(indoor);
    generalPreference(Outdoor) -> listing(outdoor);
    writeln('shit')
  ).


/*undo all yes/no assertions*/
undo:-retract(indoor(_)),fail.
undo:-retract(outdoor(_)),fail.
undo.


%level 2
%indoor - museum, shop, marine,
%outdoor - animal, theme_park, water_sports, nature, beach, farm
