factorial(0,1).
factorial(X,N) :- X>0, X1 is X-1, factorial(X1,N1), N is X*N1.


rainy(tuesday).
temperature(tuesday, celsius(0)).
snowy(X) :- rainy(X), temperature(X, celsius(Y)), Y =< 0.


based(prolog, logic).
based(haskell, maths).
likes(ivan, maths).
likes(ivan, logic).
likes(doni, logic).
likes(X,P) :- based(P,Y), likes(X,Y).


hanoi(X) :- move(X, left, right, middle).
move(1,X,Y,_) :- write([X, "->", Y]), nl.
move(N,X,Y,Z) :- M is N-1,
    move(M,X,Z,Y),
    move(1,X,Y,Z),
    move(M,Z,Y,X).


follows(monday, tuesday).
follows(tuesday, wednesday).
follows(wednesday, thursday).
follows(thursday, friday).
follows(friday, saturday).
follows(saturday, sunday).
follows(sunday, monday).
temperature1(monday, celsius(25)).
temperature1(tuesday, celsius(32)).
temperature1(wednesday, celsius(36)).
temperature1(thursday, celsius(33)).
temperature1(friday, celsius(30)).
temperature1(saturday, celsius(26)).
temperature1(sunday, celsius(27)).
hot(Day) :- temperature1(Day, celsius(Temp)), Temp > 30.
heatwave(Day, Day) :- hot(Day).
heatwave(First, Last) :- hot(First),
    follows(First, Next), heatwave(Next, Last).


member1(X,[X | _]).
member1(X, [_| T]) :- member(X, T).


length1([], 0).
length1([_ | T], N) :- length1(T, M), N is M+1.

reverse1(L, R) :- reverseAux1(L, R, []).
reverseAux1([], A, A).
reverseAux1([X | L], R, A) :-
    reverseAux1(L, R, [X| A]).

reverse2([], []).
reverse2([H | T], L) :- reverse2(T, L1),
    append(L1, [H], L).
