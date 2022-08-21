#lang scheme

(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (high-function term my-list new-list index)
  (if (= index 1)
      (append new-list (list (term (car my-list))))
      (high-function term (cdr my-list) (append new-list (list (term (car my-list)))) (- index 1))))


(high-function cube '(2 3 4 5) '() 4)
(high-function square '(2 3 4 5) '() 4)