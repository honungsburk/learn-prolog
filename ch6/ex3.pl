append([],L,L).
append([H|T],L2,[H|L3]) :- append(T,L2,L3).

accRev([H|T],A,R):- accRev(T,[H|A],R).
accRev([],A,A).

reverse(L,R):- accRev(L,[],R).

toptail([_|T], TT) :- append(TT, [_], T).