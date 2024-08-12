

groundterm(X) :- atomic(X).
groundterm(X) :- compound(X), X =.. [_|Rest], maplist(groundterm, Rest).