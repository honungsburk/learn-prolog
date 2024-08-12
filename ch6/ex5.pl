append([],L,L).
append([H|T],L2,[H|L3]) :- append(T,L2,L3).

accRev([H|T],A,R):- accRev(T,[H|A],R).
accRev([],A,A).

reverse(L,R):- accRev(L,[],R).

swapfl([H1|L1],[H2|L2]) :- 
  reverse(L1, [H2|T1]),
  reverse(L2, [H1|T1]).