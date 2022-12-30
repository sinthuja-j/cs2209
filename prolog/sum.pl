sum([], 0).
sum([H|T], Sum) :- sum_list(T, Rest), Sum is H + Rest.

average( List, Average ):- 
    sum( List, Sum ),
    length( List, Length ),
    Length > 0, 
    Average is Sum / Length.

max([],0).

max_of_two(X,Y,X) :- X >= Y.
max_of_two(X,Y,Y) :- X < Y.
list_max_elem([X],X).
list_max_elem([X,Y|Rest],Max) :-
   list_max_elem([Y|Rest],MaxRest),
   max_of_two(X,MaxRest,Max).x

