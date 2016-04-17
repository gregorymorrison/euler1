; util.scm
(use-modules (srfi srfi-1))

(define (id obj)          obj)

(define (flip func)       (lambda (x y) (func y x)))

(define (curry func x)    (lambda (y) (func x y)))
(define (compose f g)     (lambda (arg) (f (g arg))))

(define (foldr func end lst)
    (if (null? lst)
        end
        (func (car lst) (foldr func end (cdr lst)))))

(define (foldl func accum lst)
    (if (null? lst)
        accum
        (foldl func (func accum (car lst)) (cdr lst))))

(define fold foldl)
(define reduce fold)

(define (unfold func init pred)
    (if (pred init)
        (list init)
        (cons init (unfold func (func init) pred))))

(define (sum . lst)        (fold + 0 lst))
(define (product . lst)    (fold * 1 lst))

(define (range low high)
    (cond
        ((> low high) '())
        (else (cons low (range (+ low 1) high)))))

(define (slice lst start end)
    (drop (take lst end) start))


(define (mod-3-5 x)
	(or (= (modulo x 3) 0) (= (modulo x 5) 0)))