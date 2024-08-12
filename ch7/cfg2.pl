
% Use difference lists to represent the input list of words and the remaining words to be parsed.
% The first argument of each rule is the list of words to be parsed, and the second argument is the remaining words to be parsed.
% This lets us avoid appending lists, which is inefficient.

% The grammar rules are the same as in cfg1.pl, but the rules are written in a different way.
s(X,Z):- np(X,Y), vp(Y,Z).

np(X,Z):- det(X,Y), n(Y,Z).

vp(X,Z):-  v(X,Y), np(Y,Z).

vp(X,Z):-  v(X,Z).

det([the|W],W).
det([a|W],W).

n([woman|W],W).
n([man|W],W).

v([shoots|W],W).