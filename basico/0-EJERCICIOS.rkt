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


;EJERCICIO 2 CON LISTAS:
;eliminar elementos de lista

(define (remove-data lista elemento)
  (if (null? lista) ;condicional
      ;caso verdadero
      lista
      ;Fin caso verdadero

      ;caso falso
      (if (= (car lista) elemento) ;condicional
          (remove-data (cdr lista) elemento) ;#t
          ;Uniremos la cabeza con el resto usando un cons
          (cons (car lista) (remove-data (cdr lista) elemento))
          )
      )
  )
