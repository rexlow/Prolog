show_length :-
  length([1, 2, 3], X), print(X).

append_list :-
  append([1, 2], [3, 4], List), print(List).

sort_list :-
  sort([1, 3, 2, 4], X), print(X).

reverse_list :-
  reverse([1, 2, 3, 4], X), print(X).

member_of_list :-
  member(2, [1, 2, 3]).
