wizard(ron).
hasWand(harry).
quidditchPlayer(harry).
wizard(X):- hasBroom(X), hasWand(X).
hasBroom(X):- quidditchPlayer(X).

% 1. ?- wizard(ron).
% true.
% 2. ?- witch(ron).
% ERROR: Undefined procedure: witch/1
% 3. ?- wizard(hermione).
% false.
% 4. ?- witch(hermione).
% ERROR: Undefined procedure: witch/1
% 5. ?- wizard(harry).
% true.
% 6. ?- wizard(Y).
% Y = ron ;
% Y = harry.
% 7. ?- witch(Y).
% ERROR: Undefined procedure: witch/1