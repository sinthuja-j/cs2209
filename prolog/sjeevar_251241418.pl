% Assignment 4- Sinthuja Jeevarajhan
% CS 2209 
% Professor Ling
% Nov 27, 2022

father(X,Y) :- male(X), parent(X,Y).
mother(X,Y) :- female(X), parent(X,Y).
grandfather(X,Z) :- father(X,Y), parent(Y,Z).
ancestor(X,Y) :- parent(X,Y). 
ancestor(X,Z) :- parent(X,Y), ancestor(Y,Z). 
grandparent(X,Y) :- parent(X,Z), parent(Z,Y). 
uncle(X,Y):- male(X), father(Z,Y), brother(Z,X).
married(X,Y) :- father(X,Z), mother(Y,Z).
mother_in_law(X,Y) :- married(Z,Y), mother(X,Z). 
mother_in_law(X,Y) :- married(Y,Z), mother(X,Z). 
brother(X,Y) :- parent(Z,X), parent(Z,Y), male(Y), X\=Y.
brother(X,Y) :- parent(Z,X), parent(Z,Y), male(X), X\=Y.
pair_of_brothers(X,Y) :- parent(Z,X), parent(Z,Y), male(X), male(Y), X\=Y.

female(sue). 
female(ida). 
female(estelle). 
female(grace). 
female(mary). 

male(john). 
male(peter).
male(rob).
male(george).
male(jay).
male(john1). 

parent(sue, rob).
parent(sue, estelle).
parent(john, rob).
parent(john, estelle).
parent(ida, george).
parent(ida, grace).
parent(peter, george).
parent(peter, grace).
parent(estelle, john1).
parent(estelle, mary).
parent(estelle, jay).
parent(george, john1).
parent(george, mary).
parent(george, jay).

city(chicago).
city(newyork).
city(losangeles).
city(boston).
city(toronto).
city(vancouver).
city(dallas).
city(miami).
city(phoenix).
city(seattle).
city(cleveland).
city(buffalo).

airport(ohare).
airport(midway).
airport(jfk).
airport(liberty).
airport(california).
airport(logan).
airport(pearson).
airport(city).
airport(vanc).
airport(seatac).
airport(southern).
airport(northern).

has_airport(chicago,ohare).
has_airport(chicago,midway).
has_airport(newyork,jfk).
has_airport(losangeles,liberty).
has_airport(losangeles,california).
has_airport(boston,logan).
has_airport(toronto,pearson).
has_airport(toronto,city).
has_airport(vancouver,vanc).
has_airport(seattle,seatac).
has_airport(dallas,southern).
has_airport(miami,southern).
has_airport(phoenix,city).
has_airport(cleveland,northern).
has_airport(buffalo,northern).

ww2hero(ohare).
ww2hero(jfk).
ww2hero(pearson).
ww2hero(logan).

ww2battle(midway).
ww2battle(southern).
ww2battle(northern).
ww2battle(california).
   
last(X,[X]).
last(X,[Y|Xs]):-last(X,Xs).

adjacent(X,Y,[X,Y|Zs]).
adjacent(Y,X,[X,Y|Zs]).
adjacent(X,Y,[Z|Zs]):-adjacent(X,Y,Zs).

reverse([], A, A).
reverse([H1|T1], B, C):- reverse(T1, [H1|B], C).
equal([], []).
equal([A|T1], [A|T2]):- equal(T1, T2).
palindrome(A):- reverse(A, [], B), equal(A, B).


fib(0, 1) :- !.

fib(1, 1) :- !.

fib(N, F) :- N > 1, N1 is N-1, N2 is N-2, fib(N1, F1), fib(N2, F2), F is F1+F2.

sum([], 0).
sum([H|T], Sum) :- sum_list(T, Rest), Sum is H + Rest.

mean( List, Mean ):- 
    sum( List, Sum ),
    length( List, Length ),
    Length > 0, 
    Mean is Sum / Length.

maxlist([],0).

maxlist([Head|Tail],Max) :-
    maxlist(Tail,TailMax),
    Head > TailMax,
    Max is Head.

maxlist([Head|Tail],Max) :-
    maxlist(Tail,TailMax),
    Head =< TailMax,
    Max is TailMax.

min_in_list([Min],Min).                

min_in_list([H,K|T],M) :-
    H =< K,                             
    min_in_list([H|T],M).              

min_in_list([H,K|T],M) :-
    H > K,                              
    min_in_list([K|T],M).













