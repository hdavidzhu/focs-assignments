#lang racket

;;; Student Name: David Zhu
;;;
;;; Check one:
;;; [ ] I completed this assignment without assistance or external resources.
;;; [X] I completed this assignment with assistance from Anne
;;;     and/or using these external resources: ___

; 0. Require existing code from the last HW assignment

(require (only-in "../day4/hw3.rkt"
                  [calculate calculate]))

; (define calculate calculate-5)

; 1. Turn your evaluator into an interpretor

(define (run-repl)
  (display "welcome to my REPL. Type some scheme-ish.")
  (repl empty))

(define (repl lookup-list)
  (display "> ")
  (match (read)
    [(list 'DEFINE expr ...) (repl (add-to-env (DEFINE (first expr) (second expr)) lookup-list))]
    [read-input
     (display (calculate read-input lookup-list))
     (newline)
     (repl lookup-list)]))

; 2. DEFINE

(define (DEFINE? input-expression)
  (if (eq? (first input-expression) 'DEFINE) #t #f))

(define (DEFINE input-var input-association)
  (list input-var input-association))

(define (add-to-env association-pair lookup-list)
  (cons association-pair lookup-list))
