(ns ^:figwheel-hooks clojurescripting.core
    (:require  [cljsjs.tfjs]))

(def t (.tensor js/tf (clj->js [1 2 3])))
(defn main [] 
  (js/alert t))
(main)

