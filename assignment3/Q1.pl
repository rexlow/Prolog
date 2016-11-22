main:-ask_usage(Usage).

amount_bill(Usage):-
	Usage>0,
	Usage=<150,
	Amount is Usage*0.15,
	write('Your bill amount usage is:'),
	write(Amount),!.

amount_bill(Usage):-
	Usage>150,
	Z is Usage-150,
	Amount is (150*0.15+Z*0.2),
	write('Your bill amount usage is:'),
	write(Amount),!.

ask_usage(Usage):- write('Hallo,please enter your electricity usage: '),
	read(Usage),
	amount_bill(Usage).
