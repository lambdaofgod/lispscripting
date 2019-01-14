(ns clojurescripting.macros)
 
(defmacro increment [x]
  `(+ 1 ~x))
(defmacro tfmacro
  [method pkg fn & args]
  `(method pkg ~@(map fn args)))
