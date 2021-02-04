(define (square x) (* x x))

(define (compose f g)
  (lambda (x) (f (g x))))
(define (repeated func n)
  (if (= n 0)
      (lambda (x) x)
      (compose func (repeated func (- n 1)))))

((repeated square 2) 5)
