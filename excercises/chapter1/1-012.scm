#lang racket


(define (bi-coefficient n k) (f n k))
(define (f n k)
  (if (or (= n 0) (= k 0) (= n k)) 1
      (+ (f (- n 1) (- k 1))
         (f (- n 1) k))))

(bi-coefficient 0 0)
(bi-coefficient 3 3)
(bi-coefficient 4 2)
(bi-coefficient 3 1)
(bi-coefficient 3 2)

(define (fact n)
  (if (= n 0)
      1
      (* n (fact (- n 1)))))

(define (g n k)
  (/ (fact n)
     (* (fact k) (fact (- n k)))))

(g 0 0)
(g 3 3)
(g 4 2)
(g 3 1)
(g 3 2)