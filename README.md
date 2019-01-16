# lispscripting

Evaluating lisps languages compiled to javascript for playing with tensorflow.js

## BiwaScheme

### Usage

Use npm.

Follow instructions [on the project's site](https://github.com/biwascheme/biwascheme).

Run repl with `biwas` (in biwascheme directory)
```
biwascheme> (load "biwatf.scm")
#<undef>
biwascheme> t
Tensor
    [1, 2]
biwascheme> (tf add t t)
Tensor
    [2, 4]
```

#### Some remarks

biwascheme repl is not great. For vim users there is alternative though: you can use syntax highlighting/autocomplete and [tslime](https://github.com/sjl/tslime.vim) to copypaste selections into repl.


## Clojurescript

Tl;dr - can't use full Clojure, difficult to use macros (see gotchas). Arcane setup. 

### Usage

Run repl and sett up the site
```
clojure -A:fig:build
```

Use tensorflow.js from clojurescript REPL 
```
cljs.user=>(require-macros '[clojurescripting.macros :refer [tf]])
cljs.user=>(def t1 (tf tensor [(clj->js [1 0])]))
cljs.user=>(tf add [t1 t1])
#object[e Tensor
    [2, 0]]
```

### Gotchas
You can't write macros in clojurescript :( See this [stackoverflow question](https://stackoverflow.com/questions/18381052/why-clojurescript-macros-cant-be-written-in-clojurescript)

Macros have to be written in clojure (see macros.clj).
