
split([], [], []).
split([H|T], [H|P1], N) :- H >= 0, !, split(T, P1, N).
split([H|T], P, [H|N1]) :- split(T, P, N1).