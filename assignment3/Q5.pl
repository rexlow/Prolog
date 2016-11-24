%Error, red cut used in (b) due to complicated rules
%Pending to change

%Question 5
%(a)
title(book1, 'Elementary Statistics').
title(book2, 'Statistics for Engineers').
title(book3, 'Statistics for Engineers and Scientists').
title(book4, 'IT in Language Learning').

author(book1, 'Patricia Wilson').
author(book2, 'James Mori').
author(book3, 'James Mori').
author(book4, 'H Basiron').

publisher(book1, 'Addison Wesley').
publisher(book2, 'World Scientific').
publisher(book3, 'World Scientific').
publisher(book4, 'UTeM Press').

price(book1, 75).
price(book2, 125).
price(book3, 125).
price(book4, 5).

call_number(book1, 'QA373').
call_number(book2, 'QA673').
call_number(book3, 'QA674').
call_number(book4, 'QA007').

edition(book1, 1).
edition(book2, 3).
edition(book3, 2).
edition(book4, 1).

data_disk(book1, 'No').
data_disk(book2, 'Yes').
data_disk(book3, 'Yes').
data_disk(book4, 'No').

%(b)
check_disk(Title, Price, CallNo) :-
	data_disk(Book, 'Yes'),
	title(Book, Title),
	price(Book, Price),
	call_number(Book, CallNo).

%to check the book detail
book_detail(Book) :-
	title(Book, Title),
	author(Book, Author),
	publisher(Book, Publisher),
	price(Book, Price),
	call_number(Book, CallNo),
	edition(Book, Edition),
	data_disk(Book, Data_disk),
	write('Title: '), writeln(Title),
	write('Author: '), writeln(Author),
	write('Publisher: '), writeln(Publisher),
	write('Price: '), writeln(Price),
	write('Call number: '), writeln(CallNo),
	write('Edition: '), writeln(Edition),
	write('Data disk: '), writeln(Data_disk), !.

%(c)
title(X, Y) :- a(X, Y), !.
author(X, Y) :- b(X, Y), !.
publisher(X, Y) :- c(X, Y), !.
price(X, Y) :- d(X, Y), !.
call_number(X, Y) :- e(X, Y), !.
edition(X, Y) :- f(X, Y), !.
data_disk(X, Y) :- g(X, Y), !.


add_book() :-
	book_increase(),
	book(Book),
	atom_concat('book', Book, X),
	set_assert_rule(),
	writeln(X),

	write('Enter Title: '), readln(Title),
	write('Enter Author: '), readln(Author),
	write('Enter Publisher: '), readln(Publisher),
	write('Enter Price: '), readln(Price),
	write('Enter Call number: '), readln(CallNo),
	write('Enter Edition: '), readln(Edition),
	write('Enter Data disk: '), readln(Data_disk),

	atomic_list_concat(Title, ' ', A),
	atomic_list_concat(Author, ' ', B),
	atomic_list_concat(Publisher, ' ', C),
	atomic_list_concat(Price, ' ', D),
	atomic_list_concat(CallNo, ' ', E),
	atomic_list_concat(Edition, ' ', F),
	atomic_list_concat(Data_disk, ' ', G),

	asserta(a(X, A)),
	asserta(b(X, B)),
	asserta(c(X, C)),
	asserta(d(X, D)),
	asserta(e(X, E)),
	asserta(f(X, F)),
	asserta(g(X, G)), !.

:- dynamic(book/1).
:- dynamic(status/1).

book_increase() :-
	assert(book(4)),
	(   book(X), X \= 4
	->  Y is X + 1,
	    retractall(book(_)),
	    assert(book(Y))
	;   assert(book(5)),
	    retract(book(4))
	).


set_assert_rule() :-
	assert(status(false)),
	(   status(true)
	->  true
	;   assert(status(true)),

	    assert((a(X, Y) :- title(X, Y), !)),
	    assert((b(X, Y) :- author(X, Y), !)),
	    assert((c(X, Y) :- publisher(X, Y), !)),
	    assert((d(X, Y) :- price(X, Y), !)),
	    assert((e(X, Y) :- call_number(X, Y), !)),
	    assert((f(X, Y) :- edition(X, Y), !)),
	    assert((g(X, Y) :- data_disk(X, Y), !))
	),
	retract(status(false)).

%(d)
add_to_file(Book) :-
	title(Book, Title),
	author(Book, Author),
	publisher(Book, Publisher),
	price(Book, Price),
	call_number(Book, CallNo),
	edition(Book, Edition),
	data_disk(Book, Data_disk),

	open('BookInfo.txt', write, OutStream),
	writeln(OutStream, Book),
	writeln(OutStream, Title),
	writeln(OutStream, Author),
	writeln(OutStream, Publisher),
	writeln(OutStream, Price),
	writeln(OutStream, CallNo),
	writeln(OutStream, Edition),
	writeln(OutStream, Data_disk),
	close(OutStream).

add_to_file() :-
	book_increase(),
	book(Book),
	atom_concat('book', Book, X),

	write('Enter Title: '), readln(Title),
	write('Enter Author: '), readln(Author),
	write('Enter Publisher: '), readln(Publisher),
	write('Enter Price: '), readln(Price),
	write('Enter Call number: '), readln(CallNo),
	write('Enter Edition: '), readln(Edition),
	write('Enter Data disk: '), readln(Data_disk),

	atomic_list_concat(Title, ' ', A),
	atomic_list_concat(Author, ' ', B),
	atomic_list_concat(Publisher, ' ', C),
	atomic_list_concat(Price, ' ', D),
	atomic_list_concat(CallNo, ' ', E),
	atomic_list_concat(Edition, ' ', F),
	atomic_list_concat(Data_disk, ' ', G),

	open('BookInfo.txt', write, OutStream),
	writeln(OutStream, X),
	writeln(OutStream, A),
	writeln(OutStream, B),
	writeln(OutStream, C),
	writeln(OutStream, D),
	writeln(OutStream, E),
	writeln(OutStream, F),
	writeln(OutStream, G),
	close(OutStream).

