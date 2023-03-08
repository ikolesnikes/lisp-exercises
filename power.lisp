;; Raise x to the power of n.

;; Recursive version

(defun power-1 (x n)
  (if (zerop n)
      1
      (* x
         (power-1 x (1- n)))))

(power-1 2 100000)
;; Overflows the stack


;; Iterative versions

(defun power-2 (x n)
  (power-2-iter x n 1))

(defun power-2-iter (x n p)
  (if (zerop n)
      p
      (power-2-iter x (1- n) (* p x))))

(power-2 2 100000)
;; No overflow due to TCO


;; Using the DO macro

(defun power-3 (x n)
  (do ((i n (1- i))
       (p 1 (* p x)))
      ((zerop i) p)))

(power-3 2 100000)
;; Is this faster than power-2?
