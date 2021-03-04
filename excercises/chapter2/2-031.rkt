;2.31

(define (tree-map func tree)
  (cond ((null? tree) nil)
        ((not (pair? tree)) nil)
        (else (cons (tree-map func (car tree))
                    (tree-map func (cdr tree))))))

(define (square x) (* x x))
(define (square-tree tree) (tree-map square tree))

(define a (list 1
              (list 2 (list 3 4) 5)
              (list 6 7)))

(square-tree a)