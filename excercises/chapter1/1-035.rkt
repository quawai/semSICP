(define tolerance 0.000001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2))
               tolerance))
    (define (try guess)
      (let ((next (f guess)))
        (if (close-enough? guess next)
            next
            (try next))))
    (try first-guess))

(define (average x y) (/ (+ x y) 2))

(fixed-point cos 1.0); 0.7390855263619245

(define phi
  (fixed-point (lambda (x) (average x (+ 1 (/ 1 x))))
  1.0))
