#lang racket

;;; Student Name: Frankly Olin [change to your name]
;;;
;;; Check one:
;;; [ ] I completed this assignment without assistance or external resources.
;;; [ ] I completed this assignment with assistance from ___
;;;     and/or using these external resources: ___

; 0. Require existing code from the last HW assignment

(require (only-in "../day3/hw2-solns.rkt"
                  [calculate-5 calculate]))

; (define calculate calculate-5)

; 1. Turn your evaluator into an interpretor

(define (run-repl)
  (display "welcome to my REPL. Type some scheme-ish.")
  (repl))

(define (repl)
  (display "> ")
  (display (calculate (read)))
  (newline)
  (repl))