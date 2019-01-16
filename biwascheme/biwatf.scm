(define tensorflow (js-eval "require('@tensorflow/tfjs')"))

(define-macro (tf method . args) `(js-invoke tensorflow ',method ,@args))


(define foo `(1 2))
(define (range n . end)
  (define (range-acc n start acc)
		(if (< n start) acc (range-acc (- n 1) start (cons n acc))))
  (if (null? end)
    (range-acc (- n 1)  0 ())
    (range-acc (- (car end) 1) n ())))

(define (generate-data n a b c d)
  (let* (
	(eval-poly 
	 (lambda (x)
	   (+ (* a (* x x x))
	      (* b (* x x))
	      (* c x)
	      d)))
    	(xs-range (range 0 (- n 1)))
	(xs (map (lambda (x) (- (/ x n) 0.5)) xs-range))
	(ys (map eval-poly xs)))
    (list xs ys)))

(define t (tf tensor #(1 2)))
