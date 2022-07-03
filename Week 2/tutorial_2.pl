s(3).
s(4).
r(2).
q(3).
q(X) :- r(X).
p(1).
p(X) :- q(X), Y is X+1, s(Y).
