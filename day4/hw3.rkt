#lang racket

;;; Student Name: Frankly Olin [change to your name]
;;;
;;; Check one:
;;; [ ] I completed this assignment without assistance or external resources.
;;; [ ] I completed this assignment with assistance from ___
;;;     and/or using these external resources: ___

;;;;;;;;;;;
;; 1. assq

;; `assq` is a function that takes a key and an association list.
;;
;; It returns the corresponding key/value pair from the list
;; (*i.e.*, the pair whose key is *eq?* to the one it is given).
;;
;; If the key is not found in the list, `assq` returns `#f`.

(define sample-assn-list
  '((a 1)
    (b 2)
    (c 3)))

(define (my-assq input-key assn-list)
  (cond
    [(null? assn-list) #f]
    [(eq? input-key (first (first assn-list))) (first assn-list)]
    [else (my-assq input-key (rest assn-list))]))

(display "my-assq:")
(newline)
(my-assq 'c sample-assn-list) ; -> '(c 3)
(my-assq 'b sample-assn-list) ; -> '(b 2)
(my-assq 'a sample-assn-list) ; -> '(a 1)
(my-assq 'd sample-assn-list) ; -> #f
(newline)

;;;;;;;;;;;
;; 2. lookup-list

;; Add the ability to look up symbols to your evaluator.
;;
;; Add the `lookup-list` argument to your hw2 evaluator (or ours, from the solution set).
;; `(evaluate 'foo lookup-list)` should return whatever `'foo` is associated with in `lookup-list`.
