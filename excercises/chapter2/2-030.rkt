;2.30

(define (square-tree tree)
  (cond ((null? tree) nil)
        ((not (pair? tree)) (* tree tree))
        (else (cons (square-tree (car tree))
                    (square-tree (cdr tree))))))

(define (square-tree-map tree)
  (map (lambda (x)
         (cond ((null? x) nil)
               ((not (pair? x)) (* x x))
               (else (square-tree-map x))))
       tree))

(define a (list 1
              (list 2 (list 3 4) 5)
              (list 6 7)))

(square-tree a)
(square-tree-map a)