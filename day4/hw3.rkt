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

(define (calculate x lookup-list)
  (match x
    [(list operation if-expression then-expression else-expression)
     (match operation
       ['IPH (if (calculate if-expression lookup-list) (calculate then-expression lookup-list) (calculate else-expression lookup-list))])]
    [(list operation left right)
     (match operation
       ['ADD (+ (calculate left lookup-list) (calculate right lookup-list))]
       ['SUB (- (calculate left lookup-list) (calculate right lookup-list))]
       ['MUL (* (calculate left lookup-list) (calculate right lookup-list))]
       ['DIV (/ (calculate left lookup-list) (calculate right lookup-list))]
       ['GT (> (calculate left lookup-list) (calculate right lookup-list))]
       ['LT (< (calculate left lookup-list) (calculate right lookup-list))]
       ['GE (>= (calculate left lookup-list) (calculate right lookup-list))]
       ['LE (<= (calculate left lookup-list) (calculate right lookup-list))]
       ['EQ (= (calculate left lookup-list) (calculate right lookup-list))]
       ['NEQ (not (= (calculate left lookup-list) (calculate right lookup-list)))]
       ['ANDD (and (calculate left lookup-list) (calculate right lookup-list))]
       ['ORR (or (calculate left lookup-list) (calculate right lookup-list))])]
    [(list operation operand)
     (match operation
       ['NOTT (not (calculate operand lookup-list))])]
    [x (if (assq x lookup-list)
           (second (assq x lookup-list))
           x)]))

(calculate '(IPH (GT z 0) z (SUB 0 z)) '((x 3) (y 2) (z -5))) ; -> 5
