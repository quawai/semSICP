;2.35

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define (count-leaves t)
  (accumulate +
              0
              (map (lambda (tree)
                     (if (pair? tree) count-leveas tree) 1)
                   t)))

(define a (list 1 2 3))
(define b (list 4 5))

(define c (list 1 2 3 (list 4 5)))

(count-leaves a)
(count-leaves b)
