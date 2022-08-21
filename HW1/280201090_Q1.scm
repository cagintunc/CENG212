#lang scheme
(define (question-1 number sum)
  (cond ((or (= number 0) (= number 1))
         sum)
        (else
         (if (= (modulo number 2) 0)
             (question-1 (- number 1) (+ sum number))
             (question-1 (- number 1) sum)))))

(question-1 8 0)
