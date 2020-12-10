#lang racket



(define (A x y)
  (cond ((= y 0) 0)
	((= x 0) (* 2 y))
	((= y 1) 2)
        (else A (- x 1) (A x (- y 1)))))

(display "(A 1 10) is equal to ")
(A 1 10)
(display "(A 2 4) is equal to ")
(A 2 4)
(display "(A 3 3) is euqal to ")
(A 3 3)
(display "(A 10 1) is equal to ")
(A 10 1)
(display "(A 4 2) is equal to ")
(A 4 2)
(display "(A 4 3) is equal to ")
(A 4 3)
(display "\n")


(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))
(define (k n) (* 5 n n))

(define (power-2 n)
  (if (= n 1)
      2
      (* 2 (power-2 (- n 1)))))

(define (times-2 n)
  (if (= n 1)
      2
      (+ 2 (times-2 (- n 1)))))

(define (F n) (times-2 n))
(define (G n) (if (> n 0)
                  2
                  0))

(define (f-0 n) (A n 0))
(define (f-1 n) (A n 1))
(define (f-2 n) (A n 2))

(display "results of f\n")

(f 1)
(f 2)
(f 3)
(f 4)
(f 5)
(f 6)

(display "results of F\n")

(F 1)
(F 2)
(F 3)
(F 4)
(F 5)
(F 6)

(display "results of g\n")

(g 1)
(g 2)
(g 3)
(g 4)
(g 5)
(g 6)

(display "results of G\n")

(G 1)
(G 2)
(G 3)
(G 4)
(G 5)
(G 6)

(display "results of h\n")

(h 1)
(h 2)
(h 3)
(h 4)
(h 5)
(h 6)

(display "results of f-0\n")

(f-0 1)
(f-0 2)
(f-0 3)
(f-0 4)
(f-0 5)
(f-0 6)

(display "results of f-1\n")

(f-1 1)
(f-1 2)
(f-1 3)
(f-1 4)
(f-1 5)
(f-1 6)

(display "results of f-2\n")

(f-2 1)
(f-2 2)
(f-2 3)
(f-2 4)
(f-2 5)
(f-2 6)

(display "results of k\n")

(k 0)
(k 1)
(k 2)
(k 3)
(k 4)
(k 5)
(k 6)
