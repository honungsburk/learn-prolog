s --> np(X),vp(X).

np(X) --> det(X),n(X).

vp(X) --> v(X),np(X).
vp(X) --> v(X).

det(plural) --> [the].
det(singular) --> [the].
det(singular) --> [a].

n(singular) --> [woman].
n(singular) --> [man].
n(plural) --> [men].
n(singular) --> [apple].
n(plural) --> [apples].
n(singular) --> [pear].
n(plural) --> [pears].

v(singular) --> [eats].
v(plural) --> [eat].