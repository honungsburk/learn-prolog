# Learn Prolog Now!

- https://github.com/mrkkrp/lpnes

## CH1

## CH2

### Unification

- Unification
  - Are two terms equal?
  - `X = 3.` or `3 = X.` or `=(X, 3).`
  - `X = Y.` or `Y = X.` or `=(X, Y).`
  - `X = 3, Y = 4.` or `=(X, 3), =(Y, 4).`
- unification is not assignment
  - `X = 3, X = 4.` is not possible
  - `X = 3, X = Y.` is possible
- unification has no occur check
  - If you give an infinite loop, it will loop infinitely
  - `X = f(X).` is possible
  - `X = f(Y), Y = f(X).` is possible
  - `X = f(X), Y = f(Y).` is possible
  - You can run with occur check by `unify_with_occurs_check(X, f(X)).`

### Proof Search

It will search left to right, top to bottom.
I'm not sure if it sorts by cardinality or not.
