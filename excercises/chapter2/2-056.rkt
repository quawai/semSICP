(load "./helpers.scm")

(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp)
         (if (same-variable? exp var) 1 0))
        ((sum? exp)
         (make-sum (deriv (addend exp) var)
                   (deriv (augend exp) var)))
        ((product? exp)
         (make-sum
          (make-product (multiplicand exp)
                       (deriv (multiplicand exp) var))
         (make-product (multiplicand exp)
                       (deriv (multiplier exp) var))))
  ((exponent? exp)
   (make-product
    (make-product (power exp)
                  (make-exponent (base exp) (- (power exp) 1)))
    (deriv (base exp) var)))))

(define (exponent? exp)
  (eq? (car exp) '**))
(define (make-exponent b p)
  (cond ((=number? p 0) 1)
        ((=number? p 1) b)
        (else (list '** b p))))
(define (base exp) (cadr exp))
(define (power exp) (caddr exp))

(deriv '(** (* x 3) 5) 'x)
        