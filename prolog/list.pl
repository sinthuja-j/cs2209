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