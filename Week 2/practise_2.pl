nat(0).
nat(s(X)) :- nat(X).


split(L,0,[],L).
split([H|T],N,[H|T1],L2) :-
    N1 is N-1, split(T,N1,T1,L2).


concat1([],L,L).
concat1([X|L1],L2,[X|L3]) :-
    concat1(L1,L2,L3).

reverse1([],[]).
reverse1([H|T],L) :- reverse1(T,RT), concat1(RT,[H],L).

palindrom([]).
palindrom(L) :- reverse1(L,L).


rshift(L,0,L).
rshift(L1,N,L2) :- N \= 0,
    length(L1,LL),
    N1 is N mod LL,
    TL is LL-N1,
    split(L1,TL,T1,T2),
    concat1(T2,T1,L2).


sunny(mon).
sunny(tue).
sunny(wed).
warm(mon).
warm(wed).
glorious(Day) :- sunny(Day), warm(Day).


even(0).
even(N) :- N > 0, N1 is N-2, even(N1).
