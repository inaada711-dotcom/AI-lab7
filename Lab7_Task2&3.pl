%Task2
deleteElement(_, [], []).
deleteElement(X, [X|T], R) :-
    deleteElement(X, T, R).
deleteElement(X, [H|T], [H|R]) :-
    X \== H,
    deleteElement(X, T, R).
%Task3
add_at_the_end(X, L, R) :- append(L, [X], R).