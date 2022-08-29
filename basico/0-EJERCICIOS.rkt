#lang scheme



;EJERCICIOS

;EJERCICIO 0 CON LISTAS:
;crear append propio
(define (append dato lista)
  (cons dato lista))


;EJERCICIO 1 CON LISTAS:
;crear legth propio

(define lista
   ;4 elementos
  (list "hola" "mundo" "que" "tal"))

(define (mylength lista resultado)
  (if (null? lista) ;condicional
      resultado ;caso verdadero
      (mylength (cdr lista) (+ resultado 1)) ;caso falso
      )
  )