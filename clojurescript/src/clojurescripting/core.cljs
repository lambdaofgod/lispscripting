(ns ^:figwheel-hooks clojurescripting.core
    (:require  [cljsjs.tfjs])
    (:require-macros [clojurescripting.macros :only [increment]]))
(def t1 (.tensor js/tf (clj->js [1 2 3])))
;(def t2 (m/tfmacro .tensor js/tf [1 2 3]))
(defn main [] 
  (js/alert (clojurescripting.macros/increment 0)))
(main)

