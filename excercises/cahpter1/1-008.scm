#lang racket

;; 練習問題1.8:立方根に対するニュートン法



;; 推定値の改善'improve'
(define (improve x y)
  (/ (+ (/ x (* y y))
	(* 2.0 y)
	)
     3.0)
  )

;; 許容誤差0.001を定めて推定値と平方根を求めたい数値の平方(ややこしい)の差を許容誤差におさまるまで改善する
(define (good-enough? guess x)
  (< (abs (- guess x))
	  0.000000001)
     )

;; 以上を用いた素朴な立方根の近似方法
(define (cube-root-iter guess y x)
  (if (good-enough? guess y)
      y
      (cube-root-iter y (improve x y) x)
      )
  )


(define (cube-root x)
  (cube-root-iter 1 x x)
  )

(print (cube-root 64)) ; 4.0

