s --> foo,bar,wiggle.
% s(A,B):- foo(A,C), bar(C,D), wiggle(D, B).
foo --> [choo].
% foo([choo|A], A).
foo --> foo,foo.
% foo(A, C):- foo(A, B), foo(B, C).
bar --> mar,zar.
% bar(A, B):- mar(A, C), zar(C, B).
mar --> me,my.
% mar(A, B):- me(A, C), my(C, B).
me --> [i].
% me([i|A], A).
my --> [am].
% my([am|A], A).
zar --> blar,car.
% zar(A, B):- blar(A, C), car(C, B).
blar --> [a].
% blar([a|A], A).
car --> [train].
% car([train|A], A).
wiggle --> [toot].
% wiggle([toot|A], A).
wiggle --> wiggle,wiggle.
% wiggle(A, C):- wiggle(A, B), wiggle(B, C).