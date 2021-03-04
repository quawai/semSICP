;2.20

(define (same-parity . l)
  (define (filter li condition)
    (if (null? li)
        li
        (if (condition (car li))
            (append (list (car li)) (filter (cdr li) condition))
            (filter (cdr li) condition))))
  (if (even? (car l))
      (filter l even?)
      (filter l (lambda (x) (not (even? x))))))

(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7)