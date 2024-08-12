
accRev([H|T],A,R):- accRev(T,[H|A],R).
accRev([],A,A).

reverse(L,R):- accRev(L,[],R).

palindrome(L) :- reverse(L, L).