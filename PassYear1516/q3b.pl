%define a recursive rule power(Answer, Source, Power) in which Answer is equal to Source^Power

%
%short answer with predefine predicate
%
power(Answer, Source, Power) :-
  (Power >= 0),
  Answer is Source**Power.

%
%long answer with custom recursive rules
%
power2(1, _, Power) :- Power < 1, !.
power2(Answer, Source, Power) :-
  NewPower is Power - 1,
  power2(NewAnswer, Source, NewPower),
  Answer is NewAnswer*Source.
