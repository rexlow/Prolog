main :- hypothesize(Place),
	write('The suggested place is : '),
	write(Place),nl,
	undo.
hypothesize(baba_nyonya_heritage_melaka ) :- baba_nyonya_heritage_melaka  ,!.
hypothesize(pinang_peranakan_mansion) :- pinang_peranakan_mansion,!.
hypothesize(islamic_arts_museum_malaysia ) :- islamic_arts_museum_malaysia ,!.
hypothesize(petrosains_science_discovery_centre ) :- petrosains_science_discovery_centre ,!.
hypothesize(national_planetarium) :- national_planetarium ,!.
hypothesize(langkawi_oriental_village ) :- langkawi_oriental_village ,!.
hypothesize(pavilion_kl) :- pavilion_kl,!.
hypothesize(chinatown_kl) :- chinatown_kl,!.
hypothesize(central_market) :- central_market,!.
hypothesize(aquaria_klcc) :- aquaria_klcc,!.
hypothesize(lok_kawi_wildlife_park ) :- lok_kawi_wildlife_park ,!.
hypothesize(langkawi_wildlife_park ) :- langkawi_wildlife_park ,!.
hypothesize(sunway_lagoon_theme_park ) :- sunway_lagoon_theme_park ,!.
hypothesize(legoland_malaysia ) :- legoland_malaysia ,!.
hypothesize(redang_island) :- redang_island,!.
hypothesize(cenang_beach) :- cenang_beach,!.
hypothesize(boh_tea_plantation) :- boh_tea_plantation,!.
hypothesize(big_red_strawberry_farm) :- big_red_strawberry_farm,!.
hypothesize( ):- ,!.




/*places identification rules*/
baba_nyonya_heritage_melaka :-
	indoor,
	museum_lover,
	verify(speciality_museum).

pinang_peranakan_mansion :-
	indoor,
	museum_lover,
	verify(history_museum).

islamic_arts_museum_malaysia :-
	indoor,
	museum_lover,
	verify(art_museum).

petrosains_science_discovery_centre :-
	indoor,
	museum_lover,
	verify(science_museum).

national_planetarium :-
	indoor,
	museum_lover,
	verify(planetarium).

langkawi_oriental_village :-
	indoor,
	shop_lover,
	verify(gift_and_speciality_shop).

pavilion_kl :-
	indoor,
	shop_lover,
	verify(shopping_mall).

chinatown_kl :-
	outdoor,
	shop_lover,
	verify(fleas_and_streetmarkets).

central_market :-
	indoor,
	shop_lover,
	verify(fleas_and_streetmarkets).

aquaria_klcc :-
	indoor,
	marine_lover.

lok_kawi_wildlife_park :-
	outdoor,
	animal_lover,
	verify(animal_shows).

langkawi_wildlife_park :-
	outdoor,
	animal_lover,
	verify(mini_zoo).

sunway_lagoon_theme_park :-
	outdoor,
	theme_park_lover,
	verify(man_made_beach).
legoland_malaysia :-
	outdoor,
	theme_park_lover,
	verify(lego_miniland).

redang_island :-
	outdoor,
	beach_lover,
	verify(snorkeling).

cenang_beach :-
	outdoor,
	beach_lover,
	verify(beach_activities).

boh_tea_plantation :-
	outdoor,
	farm_lover.

big_red_strawberry_farm :-
	outdoor,
	farm_lover.



/*classification rules*/
indoor :-
	verify(indoor_trip).
outdoor :-
	verify(outdoor_trip).
museum_lover :-
	verify(museum).
beach_lover :-
	verify(beach).
farm_lover :-
	verify(farm).
theme_park_lover :-
	verify(water_park).
animal_lover :-
	verify(animals).
marine_lover :-
	verify(marine_life).
shop_lover :-
	verify(shopping).



/* how to ask questions */
ask(Question) :-
    write('Do you like '),
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

