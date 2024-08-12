
loves(Vincent,mia) % complex term
'loves(Vincent,mia)' % atom
Butch(boxer) % invalid, complex term can not start with large letter
boxer(Butch) % valid, complex term
and(big(burger),kahuna(burger)) % complex term
and(big(X),kahuna(X)) % complex term
_and(big(X),kahuna(X)) % invalid, complex term can not start with _
(Butch  kills  Vincent) % invalid, complex term can not have spaces
kills(Butch  Vincent) % invalid, complex term is missing ','
kills(Butch,Vincent % invalid, missing closing parenthesis