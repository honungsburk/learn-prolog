directTrain(saarbruecken,dudweiler).
directTrain(forbach,saarbruecken).
directTrain(freyming,forbach).
directTrain(stAvold,freyming).
directTrain(fahlquemont,stAvold).
directTrain(metz,fahlquemont).
directTrain(nancy,metz).


train(X,Y) :- directTrain(Y,X).
train(X,Y) :- directTrain(X,Y).


route(X, Y, Route) :- route(X, Y, [X], Route).

route(X, Y, Visited, [X, Y]) :-
    train(X, Y),
    \+ member(Y, Visited).

route(X, Y, Visited, [X | Route]) :-
    train(X, Z),
    \+ member(Z, Visited),
    route(Z, Y, [Z | Visited], Route).