#lang racket

;;; Student Name: David Zhu
;;;
;;; Check one:
;;; [ ] I completed this assignment without assistance or external resources.
;;; [ ] I completed this assignment with assistance from ___
;;;     and/or using these external resources: ___

;;     NOTE:  You need not worry about error checking in the programs below.

;; 1.  WRITE SQUARE:  given n, returns n^2.  Hint:  use *
(define (square x)
  (* x x))

(display "square testing: ") (newline)
(display (square 2)) (newline)  ;; -> 4

;; 2.  WRITE is-right-triangle:  given three numbers, returns true iff the third
;;     could be the hypotenuse of a right triangle with the specified three side lengths
;;     Hint:  use = to compare numeric values

(define (is-right-triangle a b c)
  (= (+ (square a) (square b)) (square c)))

(display "is-right-triangle testing: ") (newline)
(display (is-right-triangle 3 4 5)) (newline)  ;; -> #t
(display (is-right-triangle 4 5 6)) (newline)  ;; -> #f

;; 3.  WRITE FACTORIAL:  given n, returns n!
;;     Hint:  recursion is your friend
(define (fact n)
  (if (eq? n 0)
    1
    (* n (fact (- n 1)))))

(display "fact testing: ") (newline)
(display (fact 1)) (newline) ;; -> 1
(display (fact 2)) (newline) ;; -> 2
(display (fact 3)) (newline) ;; -> 6
(display (fact 4)) (newline) ;; -> 24

;; 4.  WRITE FIBONACCI:  given n, returns the nth fibonacci number as shown below
;;     Hint:  don't run this on really big numbers!
(define (fib n)
   (cond ((eq? n 0) 0)
         ((eq? n 1) 1)
         (else (+ (fib (- n 1)) (fib (- n 2))))))
 
(display "fib testing: ") (newline)
(display (fib 1)) (newline) ;; -> 1
(display (fib 2)) (newline) ;; -> 1
(display (fib 3)) (newline) ;; -> 2
(display (fib 4)) (newline) ;; -> 3
(display (fib 5)) (newline) ;; -> 5
(display (fib 6)) (newline) ;; -> 8
(display (fib 20)) (newline) ;; -> 6765

;;; 5.  WRITE a procedure that takes a list of numbers and returns the sum of those numbers
;;;     Hint:  first, rest, cons
;(define (sum lst)
;  your-code-here)
;
;(display (sum '(1 2 3 4))) (newline) ;; -> 10
;(display (sum '(1 20 300))) (newline) ;; -> 321
;
;;; 6.  WRITE a procedure that takes a list of numbers and returns the largest one.
;;;     While there are solutions using scheme's built-in max, we were actually hoping you'd do something else...
;(define (my-max lst)
;  your-code-here)
;
;(display (my-max '(1 10 2 20 3))) (newline) ;; -> 20
