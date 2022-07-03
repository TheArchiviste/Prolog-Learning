member1(X,[X|_]).
member1(X,[_|T]) :- member1(X,T).


edge(a,b).
edge(b,c).
edge(b,d).
edge(c,e).
edge(d,e).
path(First,Last) :- edge(First,Last).
path(First,Last) :- edge(First,Next), path(Next,Last).

plength(X,Y,1) :- edge(X,Y).
plength(X,Y,L) :- edge(X,Z), plength(Z,Y,L1), L is L1+1.
