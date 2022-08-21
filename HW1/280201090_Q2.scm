#lang scheme
(define (sum-list my-list length sum)
  (if (= length 1)
      (+ (car my-list) sum)
      (begin
        (sum-list (cdr my-list) (- length 1) (+ sum (car my-list))))))
  
(let ((initial 0))
  (sum-list (list 3 4 2 3 3 9) 6 initial))
