# clojurescripting

Simple clojurescript project to play with tensorflow.js

### Usage

Run repl and sett up the site
```
clojure -A:fig:build
```

Use tensorflow.js from clojurescript REPL 
```
cljs.user=>(load-file "src/clojurescripting/core.cljs")
cljs.user=>(def t1 (.tensor js/tf (clj->js [0 0])))
cljs.user=>(.add t1 (clj->js 1))
#object[e Tensor
    [1, 1]]
```
