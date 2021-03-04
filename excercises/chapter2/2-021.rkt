;2.21

(define (square-list items)
  (if (null? items)
  nil
  (cons (* (car items) (car items))
        (square-list (cdr items)))))

(define (square-list-revised items)
  (map (lambda (x) (* x x)) items))

(define a (list 1 2 3 4))

(square-list a)
(square-list-revised a)