main :- hypothesize(Place),
	write('The suggested place is : '),
	write(Place),nl,
	undo.

hypothesize(redang_island) :- redang_island,!.
hypothesize(legoland) :- legoland,!.
hypothesize(wet_world_water_park ):- wet_world_water_park ,!.
hypothesize(lok_kawi_wildlife_park) :- lok_kawi_wildlife_park,!.
hypothesize(aquaria_klcc) :- aquaria_klcc,!.



/*places identification rules*/
redang_island :-
	beach,
	low_budget,
	verify(beach_lovers),
	verify(snorkeling).
legoland :-
	water_park,
	high_budget,
	verify(lego_lovers),
	verify(theme_park).
wet_world_water_park :-
	water_park,
	normal_budget,
	verify(water_park_lovers).
lok_kawi_wildlife_park :-
	zoo,
	high_budget,
	verify(animal_lovers),
	verify(educational_trip).
aquaria_klcc :-
	aquarium,
	high_budget,
	verify(marine_lovers).


/*classification rules*/
beach :-
	verify(by_sea).
water_park :-
	verify(water_park).
zoo :-
	verify(has_unique_animals).
aquarium :-
	verify(marine_life).


high_budget :- verify(budget_more_than_RM2000).
normal_budget :- verify(budget_between_RM1000_and_RM2000).
low_budget :- verify(budget_less_than_RM1000).


/* how to ask questions */
ask(Question) :-
    write('Answer the following queries: '),
    write(Question),
    write('? '),
    read(Response),
    nl,
    ( (Response == yes ; Response == y)
      ->
       assert(yes(Question)) ;
       assert(no(Question)), fail).

:-dynamic yes/1,
	no/1.

/*how to verify something*/
verify(S) :-
	(yes(S)
	->
	true;
	(no(S)
	->
	fail;
	ask(S))).

/*undo all yes/no assertions*/
undo:-retract(yes(_)),fail.
undo:-retract(no(_)),fail.
undo.
