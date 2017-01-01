main:-	dynamic(marital_status/2),
	dynamic(income/2),
	dynamic(mortgage/2),
	dynamic(age/2),
	find_out(Name, Invest).

find_out(Name, Invest) :-
	write('What is your name? '),
	read(Name),
	invest(Name, Invest),
	write('Name: '),
	write(Name), nl,
	write('Invest: '), write(Invest), nl, nl,
	find_out(New_Name, New_Invest).

invest(Name, oil) :- stable_risk(Name), !.
invest(Name, gold) :- moderate_risk(Name), !.
invest(Name, computers) :- high_risk(Name).

stable_risk(Name):-
	ask_marital_status(Name,Marital_Status),
	Marital_Status == married,
	ask_income(Name,Income),
	Income=<50000,
	ask_mortgage(Name,Mortgage),
	Mortgage>=50000,!.
moderate_risk(Name):-
	ask_marital_status(Name,Marital_Status),
	Marital_Status==married,
	ask_income(Name,Income),
	Income=<50000,
	ask_mortgage(Name,Mortgage),
	Mortgage=<50000,!.
moderate_risk(Name):-
	ask_marital_status(Name,Marital_Status),
	Marital_Status==married,
	ask_income(Name,Income),
	Income>=50000,!.
moderate_risk(Name):-
	ask_marital_status(Name,Marital_Status),
	Marital_Status==single,
	ask_income(Name,Income),
	Income<35000,!.

moderate_risk(Name):-
	ask_marital_status(Name,Marital_Status),
	Marital_Status==single,
	ask_income(Name,Income),
	Income>=35000,
	ask_age(Name,Age),
	Age>50,!.
high_risk(Name):-
	ask_marital_status(Name,Marital_Status),
	Marital_Status==single,
	ask_income(Name,Income),
	Income>=35000,
	ask_age(Name,Age),
	Age=<50,!.

ask_marital_status(Name, Marital_Status) :-
	marital_status(Name, Marital_Status), !.
ask_marital_status(Name, Marital_Status) :-
	write('What is your marital status: married or single? '),
	read(Marital_Status),
	assert(marital_status(Name, Marital_Status)).

ask_income(Name, Income) :-
	income(Name, Income), !.
ask_income(Name, Income) :-
	write('How much is your annual income? (RM) '),
	read(Income),
	assert(income(Name, Income)).

ask_mortgage(Name, Mortgage) :-
	mortgage(Name, Mortgage), !.
ask_mortgage(Name, Mortgage) :-
	write('How much is your mortgage? (RM) '),
	read(Mortgage),
	assert(mortgage(Name, Mortgage)).

ask_age(Name, Age) :-
	age(Name, Age), !.
ask_age(Name, Age) :-
	write('What is your age? '),
	read(Age),
	assert(age(Name, Age)).
