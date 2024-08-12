append([],L,L).
append([H|T],L2,[H|L3]) :- append(T,L2,L3).

accRev([H|T],A,R):- accRev(T,[H|A],R).
accRev([],A,A).

reverse(L,R):- accRev(L,[],R).

last_1([H|T], L) :- append(_, [L], [H|T]).

last_2([H], H).
last_2([_|T], L) :- last_2(T, L).