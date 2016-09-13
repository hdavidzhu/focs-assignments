#lang racket

;;; Student Name: Frankly Olin [change to your name]
;;;
;;; Check one:
;;; [ ] I completed this assignment without assistance or external resources.
;;; [X] I completed this assignment with assistance from Sophie Li
;;;     and/or using these external resources: ___

;;; 1.  Create a calculator that takes one argument: a list that represents an expression.

(define (calculate x)
  (match x
    [(list operation if-expression then-expression else-expression)
     (match operation
       ['IPH (if (calculate if-expression) (calculate then-expression) (calculate else-expression))])]
    [(list operation left right)
     (match operation
       ['ADD (+ (calculate left) (calculate right))]
       ['SUB (- (calculate left) (calculate right))]
       ['MUL (* (calculate left) (calculate right))]
       ['DIV (/ (calculate left) (calculate right))]
       ['GT (> (calculate left) (calculate right))]
       ['LT (< (calculate left) (calculate right))]
       ['GE (>= (calculate left) (calculate right))]
       ['LE (<= (calculate left) (calculate right))]
       ['EQ (= (calculate left) (calculate right))]
       ['NEQ (not (= (calculate left) (calculate right)))]
       ['ANDD (and (calculate left) (calculate right))]
       ['ORR (or (calculate left) (calculate right))])]
    [(list operation operand)
     (match operation
       ['NOTT (not operand)])]
    [x x]))

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
(calculate '(NOTT (ANND (GT (ADD 3 4) (MUL 5 6)) (LE (ADD 3 (MUL 4 5)) (SUB 0 (SUB (ADD 3 4) (MUL 5 6))))))) ;; --> #t

;;; 5. Add IPH

(calculate '(IPH (GT (ADD 3 4) 7) (ADD 1 2) (ADD 1 3))) ;; -> 4
