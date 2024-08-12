twice([], []).
twice([X | R1], [X, X | R2]) :- twice(R1, R2).