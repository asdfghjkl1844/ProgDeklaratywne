/*U¿ycie predykatu cut w sytuacji, gdy logika problemu wymaga, by zapobiec w pewnychprzypadkach mo¿liwoœci poszukiwania rozwi¹zañ alternatywnych.*/
%C=2

f0(X,Y):-between(3,5,X),
         between(X,6,Y).
f0(7,7).

f1(X,Y):-!,
        between(3,5,X),
        between(X,6,Y).
f1(7,7).

f2(X,Y):-between(3,5,X),
         !,
         between(X,6,Y).
f2(7,7).

f3(X,Y):-!,
        between(3,5,X),
        between(X,6,Y),
        !.
f3(7,7).

