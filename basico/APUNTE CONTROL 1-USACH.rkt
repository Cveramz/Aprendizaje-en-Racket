#lang scheme


;===== RESUMEN/PAPEO SCHEME - CONTROL 1=====

#|

Recursion natural: estados concadenados hasta condicion tope (i+(func(i-1))
Recursion cola: recursion con acumulador de la forma (func(sdhfkdsf, acum))

Declarativa (apply +(list 1 2 3 4))
No Declarativa (define(my apply(list)))

ENTONCES RESUMEN:
-EN RECURSIÓN NATURAL NO HAY ACUMULADOR
-EN RECURSIÓN DE COLA *SI* HAY ACUMULADOR
|#


;COMO RECORRER UNA LISTA

(define (recorrer lista)
  (if (null? lista) ;SI O SI ESTA LINEA VA, PORQUE ESTO NOS PERMITE SABER CUANDO LLEGAMOS AL FINAL.
      ;#T
      ;ACÁ COMO ESTÁ VACIA LA LISTA RETORNEMOSLA
      lista
      
      ;#F
      ;ACÁ EN EL CASO FALSO PODEMOS PONER MÁS CONDICIONALES, POR EJEMPLO SABER SI EL NUM ES PAR.
      ;EJEMPLO
      (if (even? (car lista)) ;acá tenemos el filtro que es "even?" y el elemento recorrido
          ;#T
          ;ENTONCES SI ES PAR PODEMOS REEMPLAZARLO POR OTRO DATO, POR EJEMPLO #t
          ;Recordemos que aquí no podemos modificar elementos, para ello debemos CREAR una lista nueva.
          ;Y esto se hace con un CONS
          (cons #t (recorrer (cdr lista))) ;ESTO ES IMPORTANTE
          ;PORQUE EN LUGAR DE AGREGAR NUEVAMENTE LA LISTA, AGREGAREMOS LA CONTINUACIÓN DE ESTA
          ;PARA APLICAR LA RECURSIÓN NATURAL (O DE PILA).
          
          
          ;#F
          ;SI ES FALSO LO VERIFICADO (FILTRO) QUE ES EN ESTE CASO EL EVEN?
          ;Reemplacemos los impares por un #f.
          ;Para ello crearemos nuevamente una lista igua que arriba
          (cons #f (recorrer (cdr lista)))
          
          )
  )
 )



;=================================
;RECURSIÓN DE PILA A DE COLA


;Recursión de pila
(define (factorialpila num)
  (if (= num 0)
      1 ;#t -> Caso que numero sea igual a cero
      (* num (factorialpila (- num 1))) ;#f
      )
  )

;Recursión de cola

(define (factorialcola num resultado) ;Al llamarlo resultado debe ser 1
  (if (= num 1)
      resultado ;#T
      (factorialcola (- num 1) (* resultado num)) ;#f
      )
  )
    