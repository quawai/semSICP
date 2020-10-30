;; §1.1.7「ニュートン法による平方根」めも


;; 平方の定義
(define (square x)
  (* x x))

;; 平均の定義
(define (average x y)
  (/ (+ x y) 2))

;; 推定値の改善'improve'
;; 古い推定値の平方根を計算したい数値（ここでは2）の商と平均をとる
(define (improve guess x)
  (average guess (/ x guess)))

;; 許容誤差0.001を定めて推定値と平方根を求めたい数値の平方（ややこしい）の差を許容誤差におさまるまで改善する
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

;; 以上を用いた素朴な平方根の近似方法
;; 平方根を計算したい数値と推定値を定め推定値が十分に近似してするまで改善を繰り返す
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(display (sqrt-iter 1.0 2)) ; 1.4142156862745097

(define (sqrt x)
  (sqrt 1.0 x))

(display (sqrt 2))
