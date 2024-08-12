main :-
    open('ch12/hogwart.houses',write,Stream),
    write(Stream,'       gryffindor'), nl(Stream),
    write(Stream,'hufflepuff     ravenclaw'), nl(Stream),
    write(Stream,'       slytherin'),
    close(Stream).
