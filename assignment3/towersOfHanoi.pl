show_instruction(N, F, T) :-
    write('Moved disc '),
    write(N),
    write(' from '),
    write(F),
    write(' to '),
    write(T),
    write('\n').
move(1, F, T, _) :- show_instruction(1, F, T).
move(N, F, T, A) :-
    N > 1,
    N1 is N - 1,
    move(N1, F, A, T),
    show_instruction(N, F, T),
    move(N1, A, T, F).