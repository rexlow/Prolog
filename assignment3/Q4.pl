bird(sparrow).
bird(eagle).
bird(duck).
bird(kiwi).
bird(ostrich).

can_fly(kiwi) :- !, fail.
can_fly(X) :- bird(X).

%ai - true
%aii - true
%aiii - false
%aiv - false
%av - false

%b kiwi, ostrich, and owl

%c i and ii

%d line 5

%e iii

%f 
