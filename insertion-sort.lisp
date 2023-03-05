;; Insertion sort algorithm

(defun insertion-sort (lst)
  ;; Returns a new list consisting of lst elements
  ;; in ascending order.
  (do-sort lst nil))

(defun do-sort (lst sorted)
  (if (atom lst)
      sorted
      (do-sort (cdr lst)
                 (insert (car lst) sorted))))

(defun insert (elm lst)
  ;; Inserts elm into lst maintaining the list's sort order.
  (if (null lst)
      (cons elm nil)
      (if (>= (car lst) elm)
          (cons elm lst)
          (cons (car lst) (insert elm (cdr lst))))))


(insertion-sort '(5 2 4 6 1 3))
;; => (1 2 3 4 5 6)

(insertion-sort '(31 41 59 26 41 58))
;; => (26 31 41 41 58 59)
