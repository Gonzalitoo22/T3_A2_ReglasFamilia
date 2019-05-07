mujer(ana).
mujer(maria).
mujer(luisa).
mujer(fabiola).
mujer(esther).
mujer(rocio).
mujer(deysi).
mujer(vanessa).
mujer(martha).
mujer(romina).

hombre(hugo).
hombre(paco).
hombre(luis).
hombre(mario).
hombre(marco).
hombre(juan).
hombre(pedro).
hombre(raul).
hombre(gerardo).
hombre(sergio).

madre(ana, rocio).
madre(ana, maria).
madre(ana, luis).
madre(martha, deysi).
madre(fabiola, romina).
madre(romina, luisa).

padre(raul, rocio).
padre(marco, hugo).
padre(pedro, gerardo).
padre(marco, romina).
padre(sergio, paco).
padre(hugo, sergio).

% comentarios en prolog

%Consulta para abuela --> abuelo(X, Y).
abuelo(X, Y) :- padre(X, Z) , (padre(Z, Y) ; madre(Z, Y)).

%Consulta para abuela --> abuela(X, Y).
abuela(X, Y) :- madre(X, Z) , (padre(Z, Y) ; madre(Z, Y)).

%Consulta para persona --> persona(X).
persona(X) :- hombre(X) ; mujer(X).

%Consulta para nieto --> nieto(X, Y).
nieto(X, Y) :- (padre(Y, Z) , (padre(Z, X) ; madre(Z, X))) , hombre(X) ; (madre(Y, Z) , (padre(Z, X) ; madre(Z, X))) , hombre(X).

%Consulta para nieta --> nieta(X, Y).
nieta(X, Y) :- (padre(Y, Z) , (padre(Z, X) ; madre(Z, X))) , mujer(X) ; (madre(Y, Z) , (padre(Z, X) ; madre(Z, X))) , mujer(X).

%Consulta para hermanas --> hermanos(X, Y).
hermanos(X, Y) :- (padre(Z, X) , madre(W, X)) , hombre(X) , (padre(Z, Y) , madre(W, Y)) , hombre(Y) , not(X == Y).

%Consulta para hermanas --> hermanas(X, Y).
hermanas(X, Y) :- (padre(Z, X) , madre(W, X)) , mujer(X) , (padre(Z, Y) , madre(W, Y)) , mujer(Y) , not(X == Y).

%Consulta para parejas --> parejas(X, Y).
parejas(X, Y) :- padre(X, Z) , madre(Y, Z).


