child(anne,bridget).
child(bridget,caroline).
child(caroline,donna).
child(donna,emily).

% Is this a proper definition of descend?
% It will be able to find all the descendants of a person. But you will get an error
% if there are no descendants. This is because the recursion will never stop.
descend(X,Y) :- child(X,Y).
descend(X,Y) :- descend(X,Z),
                 descend(Z,Y).