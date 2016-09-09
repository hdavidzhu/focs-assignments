#lang racket

;;; Student Name: Frankly Olin [change to your name]
;;;
;;; Check one:
;;; [ ] I completed this assignment without assistance or external resources.
;;; [ ] I completed this assignment with assistance from ___
;;;     and/or using these external resources: ___

;;; 1.  Create a calculator that takes one argument: a list that represents an expression.

(define (calculate x)
  (cond [(not (list? x)) x]
        [(eq? (first x) 'ADD) (+ (calculate (first (rest x))) (calculate (second (rest x))))]
        [(eq? (first x) 'SUB) (- (calculate (first (rest x))) (calculate (second (rest x))))]
        [(eq? (first x) 'MUL) (* (calculate (first (rest x))) (calculate (second (rest x))))]
        [(eq? (first x) 'DIV) (/ (calculate (first (rest x))) (calculate (second (rest x))))]
        [(eq? (first x) 'GT) (> (calculate (first (rest x))) (calculate (second (rest x))))]
        [(eq? (first x) 'LT) (< (calculate (first (rest x))) (calculate (second (rest x))))]
        [(eq? (first x) 'GE) (>= (calculate (first (rest x))) (calculate (second (rest x))))]
        [(eq? (first x) 'LE) (<= (calculate (first (rest x))) (calculate (second (rest x))))]
        [(eq? (first x) 'EQ) (= (calculate (first (rest x))) (calculate (second (rest x))))]
        [(eq? (first x) 'NEQ) (not (calculate (cons 'EQ (rest x))))]
        [(eq? (first x) 'ANDD) (and (calculate (first (rest x))) (calculate (second (rest x))))]
        [(eq? (first x) 'ORR) (or (calculate (first (rest x))) (calculate (second (rest x))))]
        [(eq? (first x) 'NOTT) (not (calculate (first (rest x))))]
        [(eq? (first x) 'IPH) (if (calculate (first (rest x))) (calculate (second (rest x))) (calculate (third (rest x))))]))

(calculate '(ADD 3 4)) ;; --> 7
(calculate '(ADD 3 (MUL 2 4))) ;; --> 11
(calculate '(ADD (DIV 12 3) (MUL 2 4))) ;; --> 12

;;; 2. Expand the calculator's operation to allow for arguments that are themselves well-formed arithmetic expressions.

(calculate '(ADD 3 (MUL 4 5))) ;; --> 23   ;; what is the equivalent construction using list?
(calculate '(SUB (ADD 3 4) (MUL 5 6))) ;; --> -23

;;; 3. Add comparators returning booleans (*e.g.*, greater than, less than, …).
;; Note that each of these takes numeric arguments (or expressions that evaluate to produce numeric values),
;; but returns a boolean.  We suggest operators `GT`, `LT`, `GE`, `LE`, `EQ`, `NEQ`.

(calculate '(GT (ADD 3 4) (MUL 5 6))) ;; --> #f
(calculate '(LE (ADD 3 (MUL 4 5)) (SUB 0 (SUB (ADD 3 4) (MUL 5 6))))) ;; --> #t
(calculate '(NEQ 1 2)) ;; --> #t

;;; 4. Add boolean operations ANDD, ORR, NOTT

(calculate '(ANDD (GT (ADD 3 4) (MUL 5 6)) (LE (ADD 3 (MUL 4 5)) (SUB 0 (SUB (ADD 3 4) (MUL 5 6)))))) ;; --> #f
(calculate '(ORR (GT (ADD 3 4) (MUL 5 6)) (LE (ADD 3 (MUL 4 5)) (SUB 0 (SUB (ADD 3 4) (MUL 5 6)))))) ;; --> #t
(calculate '(NOTT (ANDD #f #t))) ;; -> #t

;;; 5. Add IPH

(calculate '(IPH (GT (ADD 3 4) 7) (ADD 1 2) (ADD 1 3))) ;; -> 4
