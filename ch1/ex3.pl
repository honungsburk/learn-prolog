

woman(vincent).
woman(mia).
man(jules).
person(X):- man(X); woman(X).
loves(X,Y):- father(X,Y).
father(Y,Z):- man(Y), son(Z,Y).
father(Y,Z):- man(Y), daughter(Z,Y).

% 3 facts
% 4 rules
% calauses: 3 facts + 4 rules = 7 clauses
% predicates: 7 predicates