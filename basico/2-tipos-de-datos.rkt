#lang racket

;(exact?) - esto verifica si un numero es exacto o no en consola.
;(char?) - esto verifica si es caracter.

;(display "texto") es para mostrar la cadena de texto.

(define (mostrar-nombre) (display "Nombre Ejemplo"))


; Con \ podemos ignorar el siguiente caracter, igual que con \n el salto
;de linea

;'(1 . 2) = (cons 1 2)

;hagamos una lista par en una variable.

(define variable (cons 1 2))
;para tomar primer dato usarmos car, para el segundo se usa cdr.
; ejemplo (car variable)-> 1
;==================================================================

(define lista (cons 1 (cons 2 (cons 3 (cons 4 null)))))

; (list 1 2 3 4 5 6 7 8)

;para verificar un par se usa pair?
;y para verificar lista con list?
