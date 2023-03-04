;; Given an unsorted integer list, find a pair of numbers
;; with the given sum.

;; Brute-force solution

(defun pair (lst sum)
  (if (atom lst)
      nil
      (let ((p (pair-iter (car lst) (cdr lst) sum)))
        (if (null p)
            (pair (cdr lst) sum)
            p))))


(defun pair-iter (x lst sum)
  (if (null lst)
      nil
      (let ((y (car lst)))
        (if (= (+ x y) sum)
            (list x y)
            (pair-iter x (cdr lst) sum)))))


(pair '(8 7 2 5 3 1) 10)
;; => (8 2)
(pair '(5 2 6 8 1 9) 12)
;; => nil
