prefix(P, L) :-
    append(P, _, L).
suffix(S, L) :-
    append(_, S, L).
sublist(SubL, L) :-
    suffix(S, L),
    prefix(SubL, S).

zebra(X) :-
    member(house(red, english, _), [H0,H1,H2]),
    member(house(_, spanish, jaguar), [H0,H1,H2]),
    sublist([house(_, _, snail), house(_, japanese, _)], [H0,H1,H2]),
    sublist([house(_, _, snail), house(blue, _, _)], [H0,H1,H2]),
    member(house(_, X, zebra), [H0,H1,H2]).
