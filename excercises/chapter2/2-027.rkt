;2.27

(define (deep-reverse l)
  (cond ((null? l) l)
        (else (append (deep-reverse (cdr l))
                      (list (if (pair? (car l))
                                (deep-reverse (car l))
                                (car l)))))))

(define x (list (list 1 2) (list 3 4)))
x
(reverse x)
(deep-reverse x)

