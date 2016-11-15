readWord(Stream,Word):-
  get_code(Stream,Char),
  checkCharAndReadRest(Char,Chars,Stream),
  atom_codes(Word,Chars).
  
checkCharAndReadRest(10, [], _):- !.
checkCharAndReadRest(32, [], _):- !.
checkCharAndReadRest(-1, [], _):- !.

checkCharAndRest(Char,[Char|Chars],S):-
  get_code(S,NextChar),
  checkCharAndRest(NextChar,Chars,S).
