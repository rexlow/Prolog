%a Write a Prolog Fact for each book
% declare dynamic facts
:- dynamic title/2.
:- dynamic author/2.
:- dynamic publisher/2.
:- dynamic price/2.
:- dynamic call_number/2.
:- dynamic edition/2.
:- dynamic data_disk/2.

% clear KB everytime it compiles
:- retractall(title(_,_)).
:- retractall(author(_,_)).
:- retractall(publisher(_,_)).
:- retractall(price(_,_)).
:- retractall(call_number(_,_)).
:- retractall(edition(_,_)).
:- retractall(data_disk(_,_)).

% assert facts.
:- assert(title(book1, 'Elementary Statistics')).
:- assert(title(book2, 'Statistics for Engineers')).
:- assert(title(book3, 'Statistics for Engineers and Scientists')).
:- assert(title(book4, 'IT in Language Learning')).

:- assert(author(book1, 'Patricia Wilson')).
:- assert(author(book2, 'James Mori')).
:- assert(author(book3, 'James Mori')).
:- assert(author(book4, 'H Basiron')).

:- assert(publisher(book1, 'Addison Wesley')).
:- assert(publisher(book2, 'World Scientific')).
:- assert(publisher(book3, 'World Scientific')).
:- assert(publisher(book4, 'UTeM Press')).

:- assert(price(book1, 75)).
:- assert(price(book2, 125)).
:- assert(price(book3, 125)).
:- assert(price(book4, 5)).

:- assert(call_number(book1, 'QA373')).
:- assert(call_number(book2, 'QA673')).
:- assert(call_number(book3, 'QA674')).
:- assert(call_number(book4, 'QA007')).

:- assert(edition(book1, 1)).
:- assert(edition(book2, 3)).
:- assert(edition(book3, 2)).
:- assert(edition(book4, 1)).

:- assert(data_disk(book1, 'No')).
:- assert(data_disk(book2, 'Yes')).
:- assert(data_disk(book3, 'Yes')).
:- assert(data_disk(book4, 'No')).

%b The procedure should return the Title, Price and Call number of the book with data diskettes.
check_disk(Title, Price, CallNo) :-
  data_disk(Book, 'Yes'),
  title(Book, Title),
  price(Book, Price),
  call_number(Book, CallNo).

%c Define a rule in which you are able to add the book information dynamically.
add_book :-
  aggregate_all(count, title(_,_), Count),
  NewCount is Count + 1,
  atom_concat('book', NewCount, NewBook),

  write('Enter book title: '), readln(Title),
  write('Enter book author: '), readln(Author),
  write('Enter book publisher: '), readln(Publisher),
  write('Enter book price: '), readln(Price),
  write('Enter book call number: '), readln(CallNo),
  write('Enter book edition: '), readln(Edition),
  write('Data disk available? (Yes, No): '), readln(DataDisk),

  atomic_list_concat(Title, ' ', NewTitle),
	atomic_list_concat(Author, ' ', NewAuthor),
	atomic_list_concat(Publisher, ' ', NewPublisher),
	atomic_list_concat(Price, ' ', NewPrice),
	atomic_list_concat(CallNo, ' ', NewCallNo),
	atomic_list_concat(Edition, ' ', NewEditon),
	atomic_list_concat(DataDisk, ' ', NewDataDisk),

  assert(title(NewBook, NewTitle)),
  assert(author(NewBook, AuthNewAuthoror)),
  assert(publisher(NewBook, NewPublisher)),
  assert(price(NewBook, NewPrice)),
  assert(call_number(NewBook, NewCallNo)),
  assert(edition(NewBook, NewEdition)),
  assert(data_disk(NewBook, NewDataDisk)), !.

%d Define a rule in which you are able to write the book information in an output file.
file :-
  aggregate_all(count, title(_,_), Count),
  NewCount is Count + 1,
  atom_concat('book', NewCount, NewBook),

  write('Enter book title: '), readln(Title),
  write('Enter book author: '), readln(Author),
  write('Enter book publisher: '), readln(Publisher),
  write('Enter book price: '), readln(Price),
  write('Enter book call number: '), readln(CallNo),
  write('Enter book edition: '), readln(Edition),
  write('Data disk available? (Yes, No): '), readln(DataDisk),

  atomic_list_concat(Title, ' ', NewTitle),
  atomic_list_concat(Author, ' ', NewAuthor),
  atomic_list_concat(Publisher, ' ', NewPublisher),
  atomic_list_concat(Price, ' ', NewPrice),
  atomic_list_concat(CallNo, ' ', NewCallNo),
  atomic_list_concat(Edition, ' ', NewEditon),
  atomic_list_concat(DataDisk, ' ', NewDataDisk),

  assert(title(NewBook, NewTitle)),
  assert(author(NewBook, NewAuthor)),
  assert(publisher(NewBook, NewPublisher)),
  assert(price(NewBook, NewPrice)),
  assert(call_number(NewBook, NewCallNo)),
  assert(edition(NewBook, NewEdition)),
  assert(data_disk(NewBook, NewDataDisk)),

  open('Books.txt', write, OutStream),
  writeln(OutStream, NewBook),
	writeln(OutStream, NewTitle),
	writeln(OutStream, NewAuthor),
	writeln(OutStream, NewPublisher),
	writeln(OutStream, NewPrice),
	writeln(OutStream, NewCallNo),
	writeln(OutStream, NewEditon),
	writeln(OutStream, NewDataDisk),
	close(OutStream).
