hombre(alex).
hombre(ricardo).
hombre(humberto).
hombre(luis).

mujer(ana).
mujer(paola).

profesor(alex).
profesor(ana).
profesor(ricardo).

alumno(paola).
alumno(humberto).
alumno(luis).

estudiaTec(P) :- mujer(P), alumno(P).

imparteTec(P) :- hombre(P), profesor(P).
imparteTec(ana).

tieneDoctorado(alex).

tieneMaestria(ricardo).
tieneMaestria(P) :- imparteTec(P).
tieneMaestria(P) :- tieneDoctorado(P).

excelente(luis).
excelente(humberto).

excelente(A) :- alumno(A).

alumnode(alex, humberto).
alumnode(alex, luis).
alumnode(ricardo, paola).

semestreactual(humberto).
semestreactual(luis).
semestreactual(paola).

sinalumnos(X) :- profesor(X), not(alumnode(X, _)).