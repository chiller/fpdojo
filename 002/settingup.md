# requirements

- install the ghc haskell compiler : `brew install ghc` or  `apt-get install ghc`
- make sure you are able to compile:
    - edit a example.hs source file

        factorial x = product [1..x]
        main = putStrLn . show $ factorial 5
    - compile it `ghc example.hs` , run it `./example`

# introduction

    Clojure is a LISP dialect
    Dynamic typing
    Mostly pure but allows some mutation
