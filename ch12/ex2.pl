:- use_module(readWord).

:- dynamic freq/2.

main(Filepath, Words):-
   open(Filepath, read, Str),
   readWords(Str, Words),
   close(Str),
   findall((Word, Freq), freq(Word, Freq), Frequencies),
   write(Frequencies), nl.

readWords(InStream, [Word| Words]):-
    \+ at_end_of_stream(InStream),
    readWord(InStream, Word),
    frequency(Word),
    readWords(InStream, Words).
readWords(_, _) :- !.

frequency(Word) :- 
    freq(Word, Freq), 
    NewFreq is Freq + 1, 
    retract(freq(Word, Freq)), 
    assert(freq(Word, NewFreq)). 
frequency(Word) :- 
    assert(freq(Word, 1)).