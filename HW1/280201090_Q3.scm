#lang scheme

(define (square x)
  (* x x))

(define (square-of my-list new-list index)
  (if (= index 1)
      (append new-list (list (square (car my-list))))
      (begin
        (square-of (cdr my-list) (append new-list (list (square (car my-list)))) (- index 1)))))

(square-of (list 4 5 6 7) '() 4)