%fist ask food type then ask preference

is_spicy :-
  write('Do you want spicy? (yes/no)'),
  read(Preference),
  ( Preference == yes -> recommend("Curry"); recommend("Kurma") ).

is_fry :-
  write('Do you want fry food? (yes/no)'),
  read(Preference),
  ( Preference == yes -> recommend("StirFry"); recommend("Chicken") ).

is_chili :-
  write('Do you want chili? (yes/no)'),
  read(Preference),
  ( Preference == yes -> recommend("Sambal"); recommend("Singgang") ).

recommend(Food) :- write('We recommend you '), write(Food).

go :-
  write('Which food type do you prefer? (indian, chinese, malay): '),
  read(FoodType),
  (
    FoodType == indian -> is_spicy;
    FoodType == chinese -> is_fry;
    FoodType == malay -> is_chili;
    writeln('Please try again')
  ).
