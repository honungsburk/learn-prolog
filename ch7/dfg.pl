
% This is a Definite Clause Grammar (DCG) of the same grammar as before. 
% It uses a difference list under the hood, but the rules are written in a more compact way.
s --> np,vp.

np --> det,n.

vp --> v,np.
vp --> v.

det --> [the].
det --> [a].

n --> [woman].
n --> [man].

v --> [shoots].