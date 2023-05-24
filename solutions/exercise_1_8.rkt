(module first racket
  (provide run)

  (define (square x)
    (* x x)
  )

  (define (good-enough? guess average)
    (< (abs (- average guess)) 0.00000000001)
  )

  (define (get_average x guess)
    (/ (+( / x (* guess guess)) (* 2 guess)) 3)
  )

  (define (sqrt-iter guess x)
    (define average (get_average x guess))
    (if (good-enough? guess average)
      guess
      (sqrt-iter average x)
    )
  )

  (define (run x) (sqrt-iter 1.0 x))
)