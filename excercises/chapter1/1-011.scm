#lang racket

(define (f n)
  (if (< n 3) n
      (+ (f (- n 1))
	 (* 2 (f (- n 2)))
	 (* 3 (f (- n 3))))))

(f 0)
(f 1)
(f 2)
(f 10)


(define (f-iter n)
  (define (iter a b c m)
    (cond ((< n 3) n)
          ((= m (+ n 1)) c)
          (else (iter b c (+ (* 3 a) (* 2 b) c) (+ m 1)))))
    (iter 0 1 2 3))

; although I got a solution, I am confused: define in define

(f-iter 0)
(f-iter 1)
(f-iter 2)
(f-iter 10)