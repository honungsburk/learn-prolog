% DCG with a serperate lexicon
s --> np,vp.

np --> det,n.

vp --> v,np.
vp --> v.

det --> [Word],{lex(Word,det)}.
n --> [Word],{lex(Word,n)}.
v --> [Word],{lex(Word,v)}.


lex(the,det).
lex(a,det).
lex(woman,n).
lex(man,n).
lex(shoots,v).