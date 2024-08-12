:- dynamic sigmares/2.

sigma(N, Out) :- sigmares(N, Out), !.
sigma(N, Out) :- sigma(N, 0, Out), assert(sigmares(N, Out)).

sigma(0, Acc, Acc).
sigma(N, Acc, Out) :- N > 0, N1 is N - 1, Acc1 is Acc + N, sigma(N1, Acc1, Out).