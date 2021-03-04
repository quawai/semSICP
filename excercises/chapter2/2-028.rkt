;2.28

(define (fringe tree)
  (if (pair? tree)
      (append (fringe (car tree))
              (fringe (cdr tree)))
      (if (null? tree)
          '()
          (list tree))))

(define x (list (list 1 2) (list 3 4)))
(fringe x)