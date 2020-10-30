;; §1.1.7「ニュートン法による平方根」めも



(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(display (sqrt-iter 1.0 2)) ; 1.4142156862745097

(define (sqrt x)
  (sqrt 1.0 x))

(display (sqrt 2))
