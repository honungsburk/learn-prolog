bread  =  bread. % true
'Bread'  =  bread. % false
'bread'  =  bread. % true
Bread  =  bread. % true
bread  =  sausage. % false
food(bread)  =  bread. % false
food(bread)  =  X. % X = food(bread).
food(X)  =  food(bread). % X = bread
food(bread,X)  =  food(Y,sausage). % X = sausage, Y = bread
food(bread,X,beer)  =  food(Y,sausage,X). % false
food(bread,X,beer)  =  food(Y,kahuna_burger). % false, different arity
food(X)  =  X. % true, but it should be false. It will not try to unify the arguments of the food/1 predicate.
meal(food(bread),drink(beer))  =  meal(X,Y). % X = food(bread), Y = drink(beer)
meal(food(bread),X)  =  meal(X,drink(beer)). % false