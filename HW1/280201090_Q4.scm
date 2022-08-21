#lang scheme
(define (cubes x)
  (* (* x x) x))

(define (cubes-of my-list new-list index)
  (if (= index 1)
      (append new-list (list (cubes (car my-list))))
      (begin
        (cubes-of (cdr my-list) (append new-list (list (cubes (car my-list)))) (- index 1)))))

(cubes-of (list 4 5 6 7) '() 4)