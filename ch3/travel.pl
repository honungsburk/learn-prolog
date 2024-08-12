byCar(auckland,hamilton).
byCar(hamilton,raglan).
byCar(valmont,saarbruecken).
byCar(valmont,metz).

byTrain(metz,frankfurt).
byTrain(saarbruecken,frankfurt).
byTrain(metz,paris).
byTrain(saarbruecken,paris).

byPlane(frankfurt,bangkok).
byPlane(frankfurt,singapore).
byPlane(paris,losAngeles).
byPlane(bangkok,auckland).
byPlane(singapore,auckland).
byPlane(losAngeles,auckland).

directly(X, Y) :- byCar(X, Y); byTrain(X, Y); byPlane(X, Y).
can_travel(X, Y) :- directly(X, Y).
can_travel(X, Y) :- directly(X, Z), can_travel(Z, Y).

travel_path(A, B, go(A, B)) :- directly(A, B).
travel_path(A, B, go(A, X, G)) :-
    directly(A, X),
    travel_path(X, B, G).

directly(car, X, Y) :- byCar(X, Y).
directly(train, X, Y) :- byTrain(X, Y).
directly(plane, X, Y) :- byPlane(X, Y).

travel_directions(A, B, go_by(T, A, B)) :- directly(T, A, B).
travel_directions(A, B, go_by(T, A, X, G)) :-
    directly(T, A, X),
    travel_directions(X, B, G).
