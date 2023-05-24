; (module first racket
;   (provide sqrt)

;   (define (square x) (* x x))

;   ; (define (good-enough? guess x) (< (abs (- (square guess) x)) 0.001))

;   (define (improve guess x) (average guess (/ x guess)))

;   (define (average x y) (/ (+ x y) 2))

;   ; (define (sqrt-iter guess x) (if (good-enough? guess x) guess
;   ;   (sqrt-iter (improve guess x) x)))

;   ; (define (sqrt x) (sqrt-iter 1.0 x))

; (define (sqrt x)
;   (sqrt-iter 1.0 0 x))
 
; (define (sqrt-iter guess last-guess x)
;   (if (good-enough? guess last-guess x)
;       guess
;       (sqrt-iter (improve guess x)
;                  guess
;                  x)))
 
; (define (good-enough? guess last-guess x)
;   (print last-guess)
;   (< (abs (- guess last-guess)) (/ guess 100000)))
; )

(module first racket
  (provide sqrt)

  (define (square x)
    (* x x)
  )

  (define (good-enough? guess average)
    (print guess)
    (< (abs (- average guess)) 0.00000000001)
  )

  (define (get_average x guess)
    (/ (+ (/ x guess) guess) 2)
  )

  (define (sqrt-iter guess x)
    (define average (get_average x guess))
    (if (good-enough? guess average)
      guess
      (sqrt-iter average x)
    )
  )

  (define (sqrt x) (sqrt-iter 1.0 x))
)