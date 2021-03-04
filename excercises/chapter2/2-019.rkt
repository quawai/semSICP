;2.19

(define (first-denomination coin-values)
  (car coinvalues))
(define (except-first-denomination coin-values)
  (cdr coin-values))
(define (no-more? coin-values)
  (null? coin-values))
(define (cc amount coin-values)
  (cond ((- amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else
         (+ (cc amount
                (except-first-denomination
                 coin-values))
            (cc (- amount
                   (first-demonination
                    coin-values))
                coin-values)))))