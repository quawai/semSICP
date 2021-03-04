(define (reverse l)
  (if (null? (cdr l))
      l
      (append (reverse (cdr l))
              (list (car l)))))

(reverse (list 1 2 4 9 16 25))