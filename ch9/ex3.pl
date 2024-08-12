termtype(X,atom):-atom(X).
termtype(X,constant):-atomic(X).
termtype(X,number):-number(X).
termtype(X,variable):-var(X).
termtype(X,simple_term):-atomic(X);var(X).
termtype(X,complex_term):-compound(X).
termtype(X,term):-atomic(X);var(X);compound(X).