#lang racket

(define ejemplolista (list 1 2 3 4))
(define ejemplolista1 (list 5 6 7 8))

;car y cdr es compatible con esa definición.
;Ejemplo: (car ejemplolista)
#|
Hay otras formas de usar car y cdr, no es exactamente
lo mismo, pero funcionan similar
first,second,third,fourth,fifth.... tenth
car->fist (también existe second para otras posiciones.
cdr->rest
El ultimo elemento de la lista es last
car->primero
cadr->segundo
caddr->tercero
(cdr (cdr (cdr lista))) = (cddd lista)
(list-ref ejemplolista 0) == ejemplolista[0] (comparativa con c)

Longitud de lista se puede obtener con (length ejemplolista)
En racket existe append, no es como python que se le puede agregar datos,
sinó que es para UNIR dos listas.
(append ejemplolista ejemplolista1)

Las listas se pueden invertir con (reverse ejemplolista)
Con (member {DATO} ejemplolista) se puede verificar
un dato en una lista

Ejemplo: (member 2 ejemplolista)-> '(2 3 4)
Para tener un true o false se puede usar:
(not (bollean? (member 2 ejemplolista))) -> #t
Ahora que sabemos que en la lista tenemos un 2, la función nos
tira un true.
|#
