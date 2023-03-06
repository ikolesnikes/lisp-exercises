;; Calculate the height of a binary tree

(defun binary-tree-height (tr)
  (if (atom tr)
      0
      (let ((lf (+ 1 (binary-tree-height (car tr))))
            (rt (+ 1 (binary-tree-height (cdr tr)))))
        (if (> lf rt)
            lf
            rt))))

