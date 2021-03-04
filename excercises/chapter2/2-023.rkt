;2.23

(define (for-each func l)
  (cond ((null? l))
        (else (func (car l))
              (for-each func (cdr l)))))

(for-each (lambda (x)
            (newline)
            (display x))
          (list 57 321 88))