mother(susan,john).
mother(mary,edward).
father(paul,john).
father(paul,peter).
parent(X,Y) :- mother(X,Y).
parent(X,Y) :- father(X,Y).
sibling(X,Y) :- parent(Z,X), parent(Z,Y), X \= Y.
