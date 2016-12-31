%fist ask food type then ask preference

food(indian) :-
  write('Do you want spicy? (spicy/not_spicy)'),
  read(Preference),
  food(indian,Preference).

food(chinese) :-
  write('Do you want fry food? (fry/not_fry)'),
  read(Preference),
  food(chinese,Preference).

food(malay) :-
  write('Do you want chili? (chili/not_chili)'),
  read(Preference),
  food(malay,Preference).

food(indian,spicy) :- recommend("Curry").
food(indian,not_spicy) :- recommend("Kurma").

food(chinese,fry) :- recommend("StirFry").
food(chinese,not_fry) :- recommend("Chicken").

food(malay,chili) :- recommend("Sambal").
food(malay,not_chili) :- recommend("Singgang").

recommend(Food) :- write('We recommend you '), write(Food).

go :-
  write('Which food type do you prefer? (indian, chinese, malay): '),
  read(FoodType),
  food(FoodType).
