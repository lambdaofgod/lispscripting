(ns clojurescripting.macros)
 
(defmacro tf 
  [method args]
   `(. js/tf ~method ~@args))
