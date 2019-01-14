(define tensorflow (js-eval "require('@tensorflow/tfjs')"))

(define-macro (tf method . args) `(js-invoke tensorflow ',method ,@args))

(define t (tf tensor #(1 2)))
