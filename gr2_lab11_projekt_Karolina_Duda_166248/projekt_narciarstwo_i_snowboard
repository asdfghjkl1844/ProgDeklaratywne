% Program w jêzyku Prolog dotycz¹cy narciarstwa i snowboardu.

% Cel: Program ma na celu modelowanie podstawowych informacji o
% narciarstwie i snowboardzie, umo¿liwiaj¹c u¿ytkownikowi zadawanie
% pytañ na temat tras narciarskich w Polsce, warunków œniegowych,
% sprzêtu oraz umiejêtnoœci potrzebnych do uprawiania tych sportów.

% Zastosowanie: Program mo¿e byæ u¿ywany przez entuzjastów sportów
% zimowych do planowania wyjazdów na narty lub snowboard, a tak¿e przez
% pocz¹tkuj¹cych, którzy chc¹ dowiedzieæ siê wiêcej o tych sportach.

% Problem: Rozwi¹zanie problemu gromadzenia i wyszukiwania informacji o
% trasach narciarskich, sprzêcie oraz umiejêtnoœciach w narciarstwie i
% snowboardzie.

% Definicja tras narciarskich
% Predykat opisuj¹cy trasê: trasa(Nazwa, Trudnosc)
trasa(kasprowy_wierch, trudna).
trasa(gubalowka, srednia).
trasa(bialka_tatrzanska, latwa).
trasa(szczyrk, trudna).
trasa(krynica, srednia).
trasa(zieleniec, latwa).
trasa(szrenica, bardzo_trudna).
trasa(wisla, bardzo_latwa).
trasa(jaworzyna_krynicka, srednia).
% Przyk³ad wywo³ania: trasa(Nazwa, trudna).

% Fakty dotycz¹ce u¿ytkowników i ich preferencji
uzytkownik(jan, srednia).
uzytkownik(anna, latwa).
uzytkownik(tomasz, bardzo_trudna).
uzytkownik(ewa, srednia).
uzytkownik(adam, trudna).
uzytkownik(karol, bardzo_latwa).
uzytkownik(dariusz, srednia).
uzytkownik(katarzyna, latwa).
uzytkownik(piotr, bardzo_trudna).
uzytkownik(pawel, trudna).
uzytkownik(maria, bardzo_latwa).

% Predykat sprawdzaj¹cy, czy u¿ytkownik mo¿e korzystaæ z danej trasy
moze_korzystac(Uzytkownik, Nazwa) :-
    uzytkownik(Uzytkownik, Poziom),
    trasa(Nazwa, Trudnosc),
    poziom_odpowiada(Poziom, Trudnosc).

% Predykat sprawdzaj¹cy, czy poziom trudnoœci trasy odpowiada poziomowi u¿ytkownika
poziom_odpowiada(latwa, latwa).
poziom_odpowiada(srednia, latwa).
poziom_odpowiada(srednia, bardzo_latwa).
poziom_odpowiada(srednia, srednia).
poziom_odpowiada(trudna, latwa).
poziom_odpowiada(latwa, bardzo_latwa).
poziom_odpowiada(bardzo_trudna, bardzo_trudna).
poziom_odpowiada(bardzo_trudna, trudna).
poziom_odpowiada(bardzo_trudna, srednia).
poziom_odpowiada(bardzo_trudna, latwa).
poziom_odpowiada(bardzo_trudna, bardzo_latwa).
poziom_odpowiada(trudna, trudna).
poziom_odpowiada(trudna, srednia).
poziom_odpowiada(bardzo_latwa, bardzo_latwa).

% Przyk³ady wywo³ania:
% moze_korzystac(jan, bialka_tatrzanska).  % powinno zwróciæ true
% moze_korzystac(anna, kasprowy_wierch).   % powinno zwróciæ false

% Predykat wyszukuj¹cy wszystkie trasy odpowiednie dla danego u¿ytkownika
odpowiednie_trasy(Uzytkownik, Trasy) :-
    findall(Trasa, moze_korzystac(Uzytkownik, Trasa), Trasy).

% Przyk³ad wywo³ania:
% odpowiednie_trasy(jan, Trasy).  % powinno zwróciæ listê tras odpowiednich dla Jana

% Predykat wyszukuj¹cy u¿ytkowników, którzy mog¹ korzystaæ z danej trasy
uzytkownicy_na_trase(Trasa, Uzytkownicy) :-
    findall(Uzytkownik, moze_korzystac(Uzytkownik, Trasa), Uzytkownicy).

% Przyk³ad wywo³ania:
% uzytkownicy_na_trase(kasprowy_wierch, Uzytkownicy).  % powinno zwróciæ listê u¿ytkowników, którzy mog¹ korzystaæ z trasy Kasprowy Wierch

% Predykat sprawdzaj¹cy, czy dana trasa jest popularna
% Trasa jest popularna, jeœli wiêcej ni¿ 2 u¿ytkowników mo¿e z niej korzystaæ
popularna_trasa(Trasa) :-
    uzytkownicy_na_trase(Trasa, Uzytkownicy),
    length(Uzytkownicy, Liczba),
    Liczba > 2.

% Przyk³ad wywo³ania:
% popularna_trasa(bialka_tatrzanska). % powinno zwróciæ true, jeœli
% wiêcej ni¿ 2 u¿ytkowników mo¿e korzystaæ z trasy Bia³ka Tatrzañska

% Predykat wyszukuj¹cy trasy wed³ug poziomu trudnoœci
trasy_wg_trudnosci(Trudnosc, Trasy) :-
    findall(Trasa, trasa(Trasa, Trudnosc), Trasy).

% Przyk³ad wywo³ania:
% trasy_wg_trudnosci(latwa, Trasy). % powinno zwróciæ listê tras o
% poziomie trudnoœci '³atwa'

% Predykat sprawdzaj¹cy, czy dwóch u¿ytkowników mo¿e korzystaæ z tej samej trasy
dziela_trase(Uzytkownik1, Uzytkownik2, Trasa) :-
    moze_korzystac(Uzytkownik1, Trasa),
    moze_korzystac(Uzytkownik2, Trasa).

% Przyk³ad wywo³ania:
% dziela_trase(jan, ewa, krynica). % powinno zwróciæ true, jeœli Jan i
% Ewa mog¹ korzystaæ z trasy Krynica

% Predykat znajdowania tras, które s¹ wspólne dla dwóch u¿ytkowników
wspolne_trasy(Uzytkownik1, Uzytkownik2, Trasy) :-
    findall(Trasa, dziela_trase(Uzytkownik1, Uzytkownik2, Trasa), Trasy).

% Przyk³ad wywo³ania:
% wspolne_trasy(tomasz, adam, Trasy). % powinno zwróciæ listê tras,
% które Tomasz i Adam mog¹ wspólnie u¿ywaæ

% Definicja sprzêtu narciarskiego
% Predykat opisuj¹cy sprzêt: sprzet(Typ, Marka, Plec, Cena)
sprzet(narty, rossignol, meskie, 1999.0).
sprzet(narty, atomic, damskie, 1399.0).
sprzet(snowboard, burton, damskie, 1899.0).
sprzet(narty, salomon, meskie, 1699.0).
sprzet(snowboard, nitro, meskie, 1950.0).
sprzet(narty, head, dzieciece, 799.0).
sprzet(narty, nordica, meskie, 1099.0).
sprzet(narty, streule, dzieciece, 399.0).
sprzet(narty, voelkt, damskie, 1245.0).
sprzet(snowboard, capita, damskie, 2350.0).
sprzet(snowboard, salomon, damskie, 1950.0).
sprzet(snowboard, rome, meskie, 1579.0).
sprzet(snowboard, ride, meskie, 2250.0).
sprzet(snowboard, head, dzieciece, 459.0).

% Przyk³ad wywo³ania: sprzet(narty, Marka, Plec, Cena).

% Definicja umiejêtnoœci
% Predykat opisuj¹cy umiejêtnoœæ: umiejetnosc(Sport, Poziom, Umiejetnosc)
umiejetnosc(narciarstwo, poczatkujacy, jazda_po_trasie).
umiejetnosc(narciarstwo, zaawansowany, jazda_po_muldach).
umiejetnosc(snowboard, poczatkujacy, jazda_po_trasie).
umiejetnosc(snowboard, zaawansowany, skoki).
umiejetnosc(narciarstwo, zaawansowany, skoki).

% Przyk³ad wywo³ania: umiejetnosc(Sport, poczatkujacy, Umiejetnosc).

% Definicja warunków œniegowych
% Predykat opisuj¹cy warunki œniegowe: warunki_sniegowe(Miejsce, Poziom_sniegu, Jakosc_sniegu)
warunki_sniegowe(gubalowka, wysoki, puszysty).
warunki_sniegowe(krynica, sredni, ubity).
warunki_sniegowe(szczyrk, niski, lodowy).
warunki_sniegowe(bialka_tatrzanska, wysoki, puszysty).
warunki_sniegowe(kasprowy_wierch, niski, lodowy).
warunki_sniegowe(zieleniec, wysoki, puszysty).
warunki_sniegowe(wisla, sredni, ubity).
warunki_sniegowe(szrenica, niski, lodowy).
warunki_sniegowe(jaworzyna_krynicka, wysoki, puszysty).

% Przyk³ad wywo³ania: warunki_sniegowe(Miejsce, wysoki, _).

% Predykat ³¹cz¹cy trasê z warunkami œniegowymi
% trasa_z_warunkami(Nazwa, Trudnosc, Poziom_sniegu, Jakosc_sniegu)
trasa_z_warunkami(Nazwa, Trudnosc, Poziom_sniegu, Jakosc_sniegu) :-
    trasa(Nazwa, Trudnosc),
    warunki_sniegowe(Nazwa, Poziom_sniegu, Jakosc_sniegu).

% Przyk³ad wywo³ania: trasa_z_warunkami(szczyrk, Trudnosc,
% Poziom_sniegu, Jakosc_sniegu).

% Predykat sugeruj¹cy sprzêt na podstawie sportu i poziomu zaawansowania
% sugerowany_sprzet(Sport, Poziom, Typ, Marka, Plec, Cena)
sugerowany_sprzet(Sport, poczatkujacy, Typ, Marka, Plec, Cena) :-
    (Sport == narciarstwo, Typ == narty ; Sport == snowboard, Typ == snowboard),
    sprzet(Typ, Marka, Plec, Cena).

sugerowany_sprzet(Sport, zaawansowany, Typ, Marka, Plec, Cena) :-
    (Sport == narciarstwo, Typ == narty ; Sport == snowboard, Typ == snowboard),
    sprzet(Typ, Marka, Plec, Cena),
    Cena >= 1000.

% Przyk³ad wywo³ania: sugerowany_sprzet(narciarstwo, zaawansowany,
% narty, Marka, Plec, Cena). Predykat ³¹cz¹cy umiejêtnoœci z sugerowanym
% sprzêtem umiejetnosci_i_sprzet(Sport, Poziom, Umiejetnosc, Typ, Marka,
% Cena)
umiejetnosci_i_sprzet(Sport, Poziom, Umiejetnosc, Typ, Plec, Marka, Cena) :-
    umiejetnosc(Sport, Poziom, Umiejetnosc),
    sugerowany_sprzet(Sport, Poziom, Typ, Plec, Marka, Cena).

% Przyk³ad wywo³ania: umiejetnosci_i_sprzet(narciarstwo, zaawansowany,
% skoki, narty, Plec, Marka, Cena).

% Definicja miejsc z wypo¿yczalni¹ sprzêtu
% Predykat opisuj¹cy miejsce z wypo¿yczalni¹: wypozyczalnia(Miejsce,
% Typ, Cena_za_dzien)
wypozyczalnia(kasprowy_wierch, narty, 50).
wypozyczalnia(kasprowy_wierch, snowboard, 40).
wypozyczalnia(krynica, narty, 45).
wypozyczalnia(krynica, snowboard, 35).
wypozyczalnia(bialka_tatrzanska, narty, 55).
wypozyczalnia(bialka_tatrzanska, snowboard, 50).
wypozyczalnia(gubalowka, narty, 55).
wypozyczalnia(gubalowka, snowboard, 45).
wypozyczalnia(szczyrk, narty, 40).
wypozyczalnia(szczyrk, snowboard, 45).
wypozyczalnia(zieleniec, narty, 55).
wypozyczalnia(zieleniec, snowboard, 50).
wypozyczalnia(wisla, narty, 45).
wypozyczalnia(wisla, snowboard, 40).
wypozyczalnia(szrenica, narty, 45).
wypozyczalnia(szrenica, snowboard, 45).
wypozyczalnia(jaworzyna_krynicka, narty, 50).
wypozyczalnia(jaworzyna_krynicka, snowboard, 53).

% Przyk³ad wywo³ania: wypozyczalnia(Miejsce, Typ, 40).

% Predykat ³¹cz¹cy trasê z wypo¿yczalni¹ sprzêtu
% trasa_i_wypozyczalnia(Nazwa, Trudnosc, Typ, Cena_za_dzieñ)
trasa_i_wypozyczalnia(Nazwa, Trudnosc, Typ, Cena_za_dzien) :-
    trasa(Nazwa, Trudnosc),
    wypozyczalnia(Nazwa, Typ, Cena_za_dzien).

% Przyk³ad wywo³ania: trasa_i_wypozyczalnia(kasprowy_wierch, Trudnosc,
% Typ, Cena_za_dzien).

% Definicja dostêpnych instruktorów narciarskich i snowboardowych
% Predykat opisuj¹cy instruktora: instruktor(Imie, Sport, Poziom,
% Trasa, Cena_za_godzine)
instruktor(jan, narciarstwo, poczatkujacy, bialka_tatrzanska, 100).
instruktor(anna, narciarstwo, zaawansowany, kasprowy_wierch, 150).
instruktor(tomasz, snowboard, poczatkujacy, zieleniec, 90).
instruktor(ewa, snowboard, zaawansowany, gubalowka, 140).
instruktor(andrzej, narciarstwo, poczatkujacy, krynica, 125).
instruktor(zenon, snowboard, poczatkujacy, wisla, 120).
instruktor(katarzyna, narciarstwo, poczatkujacy, wisla, 145).
instruktor(jacek, snowboard, zaawansowany, szrenica, 170).
instruktor(adam, narciarstwo, zaawansowany, szczyrk, 130).
instruktor(karol, snowboard, zaawansowany, szczyrk, 125).

% Przyk³ad wywo³ania: instruktor(Imie,narciarstwo,Poziom,Cena_za_godzine).

% Predykat sugeruj¹cy instruktora na podstawie sportu i poziomu zaawansowania
% sugerowany_instruktor(Sport, Poziom, Imie, Trasa, Cena_za_godzine)
sugerowany_instruktor(Sport, Poziom, Imie, Trasa, Cena_za_godzine) :-
    instruktor(Imie, Sport, Poziom, Trasa, Cena_za_godzine).

% Przyk³ad wywo³ania:
% sugerowany_instruktor(narciarstwo,zaawansowany,Imie,kasprowy_wierch,
% Cena_za_godzine).

% Przyk³ady zapytañ:
% 1. Jakie s¹ trudne trasy narciarskie?
%    trasa(Nazwa, trudna).
% 2. Jaki sprzêt snowboardowy jest dostêpny?
%    sprzet(snowboard, Marka, Plec, Cena).
% 3. Jakie s¹ warunki œniegowe w Krynicy?
%    warunki_sniegowe(krynica, Poziom_sniegu, Jakosc_sniegu).
% 4. Jakie umiejêtnoœci s¹ wymagane dla zaawansowanych snowboardzistów?
%    umiejetnosc(snowboard, zaawansowany, Umiejetnosc).
% 5. Gdzie mo¿na wypo¿yczyæ narty w Krynicy i jaka jest cena za dzieñ?
%    wypozyczalnia(krynica, narty, Cena_za_dzien).
% 6. Jaki instruktor jest polecany dla pocz¹tkuj¹cych narciarzy?
%    sugerowany_instruktor(narciarstwo, poczatkujacy, Imie, Trasa,
%    Cena_za_godzine).




