% Rozpoznawanie wielomian�w jednej zmiennej
% o wsp�czynnikach liczbowych

/*
Definicja: rekurencja strukturalna

1)x jest wielomianem zmiennej x
  c - liczba jest wielomianem dowolnej zmiennej

2) Je�eli w, w1 i w2 s� wielomianami zm. x, to -w, w1+w2, w1-w2, w1*w2,
w^N (N-liczba naturalna) s� wielomianami zmiennej x
*/

% wielomian(W,X)
% spe�niony, gdy w jest wielomianem zmiennej x
% o wsp�czynnikach liczbowych
% definicja rekurencyjna

% warunki zako�czenia rekurencji
  wielomian(x,x).
  wielomian(C,_):-number(C).

% rekurencja
  wielomian(-W,X):-wielomian(W,X).
  wielomian(W1+W2,X):-wielomian(W1,X),
          wielomian(W2,X).
  wielomian(W1-W2,X):-wielomian(W1,X),
          wielomian(W2,X).
  wielomian(W1*W2,X):-wielomian(W1,X),
          wielomian(W2,X).
  wielomian(W^N,X):-integer(N),
         N>1,
         wielomian(W,X).
