start :- menu([coffee, milk, chocolate, apple, juice]).

menu(Basket) :-
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE .'), nl,
    read(Choice),
    do(Choice, Basket).

do(d, Basket) :- !,
    show_items(Basket),
    menu(Basket).


do(a, Basket) :- !,
    write('enter the item you want to add it'), nl,
    read(Item),
    add(Item, Basket, NewBasket),
    write('The item has been added'), nl,
    menu(NewBasket).

do(e, _) :- !,
    write('Goodbye!'), nl.

do(_, Basket) :-
    write('Invalid choice, try again.'), nl,
    menu(Basket).

show_items([]).
show_items([H|T]) :- write(H), nl, show_items(T).

add(X, L, [X|L]).