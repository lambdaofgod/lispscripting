# clojurescripting

Simple clojurescript project to play with tensorflow.js

### Usage

Run repl and sett up the site
```
clojure -A:fig:build
```

Use tensorflow.js from clojurescript REPL 
```
(load-file "src/clojurescripting/core.cljs")
(def t1 (.tensor js/tf (clj->js [0 0])))
(.add t1 (clj->js 1))
```
**```#object[e Tensor
    [1, 1]]```**
