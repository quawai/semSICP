#lang racket

(define (fuck-the-police x y z)
  (- (+ (* x x)
        (* y y)
        (* z z)
      )
      (* (min x y z) (min x y z))
  )
)

(print (fuck-the-police 100 50 25)) ; 12500
