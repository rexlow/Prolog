ring(Person, Number) :-
  location(Person, Place),
  phone_number(Place, Number).

location(Person, Place) :-
  at(Person, Place).

phone_number(rm303g, 5767).
phone_number(rm303a, 5949).

at(dr_jones, rm303g).

visiting(dr_bottaci, dr_jones).
