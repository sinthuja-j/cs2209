father(X,Y) :- male(X), parent(X,Y).
mother(X,Y) :- female(X), parent(X,Y).
grandfather(X,Y) :- male(X), parent(X,Z), parent(Z,Y).
ancestor(X,Y) :- parent(X,Y). 
ancestor(X,Z) :- parent(X,Y), ancestor(Y,Z). 
grandparent(X,Z) :- parent(X,Y), parent(Y,Z). 
uncle(X,Y):- male(X), father(Z,Y), brother(Z,X).
married(X,Y) :- father(X,Z), mother(Y,Z).
mother_in_law(X,Y) :- married(Z,Y), mother(X,Z). 
mother_in_law(X,Y) :- married(Y,Z), mother(X,Z). 
brother(X,Y) :- parent(Z, X), parent(Z,Y), male(Y), X\=Y.
brother(X,Y) :- parent(Z, X), parent(Z,Y), male(X), X\=Y.
pair_of_brothers(X,Y) :- parent(Z, X), parent(Z,Y), male(X), male(Y), X\=Y.

female(sue). 
female(ida). 
female(estelle). 
female(grace). 
female(mary). 

male(john). 
male(peter).
male(rob).
male(george).
male(john).
male(jay).

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


   

















