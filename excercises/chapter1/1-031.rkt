#lang racket

; a.

(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))
  

(define (identity x) x)
(define (succ x) (+ x 1))
(define (fact x)
  (product identity 1 succ x))

(fact 3); 6

(define (wallis n)
  (if (even? n)
      (/ (+ 2 n) (+ 1 n))
      (/ (+ 1 n) (+ 2 n))))
(define (pi_approx foo)
  (* 4 (product wallis 1 succ foo)))

(pi_approx 10)

(pi_approx 50)


;b.

(define (product-rec term a next b)
  (if (> a b)
      1
      (* (term a) (product term (next a) next b))))


(define (fact-rec x)
  (product-rec identity 1 succ x))

(fact-rec 3); 6
