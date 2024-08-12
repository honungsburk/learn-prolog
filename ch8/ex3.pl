% DCG with a serperate lexicon
s(s(NP, VP)) --> np(NP, Number, subject), vp(VP, Number).

np(np(DET, N), Number, _) --> det(DET, Number), n(N, Number).
np(np(PRO), Number, X) --> pro(PRO, Number).

vp(vp(V, NP), Number) --> v(V, Number),np(NP, Number, object).
vp(vp(V), Number) --> v(V, Number).

det(det(Word), Number) --> [Word],{lex(Word,det, Number)}.
n(n(Word), Number) --> [Word],{lex(Word,n, Number)}.
v(v(Word), Number) --> [Word],{lex(Word,v, Number)}.

pro(pro(Word), Number, X) --> [Word],{lex(Word,pro, Number, X)}.

% Determinant
lex(the, det, _).
lex(a,det, singular).
% Nouns
lex(woman,n, singular).
lex(man,n, singular).
lex(men,n, plural).

% Verbs
lex(shoots,v, singular).
lex(shoot,v, plural).

% Pronouns
lex(him,pro, singular, object).
lex(her,pro, singular, object).
lex(he,pro, singular, subject).
lex(she,pro, singular,subject).
