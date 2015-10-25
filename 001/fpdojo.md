# what is fp

    first-class higher-order functions
    filter, map, reduce
    pure functions - no mutation, no assignment - easier to understand code without looking at it
    recursion


    encourages writing code using expressions rather than statements, composition

        int total = 0;
        for(int i = 1; i<=10; i++){
            total = total + 1;
        }
    statements, mutable state

    sum [1..10]

    no statements, expressions

    why is it suddenly so popular?

# functional programming in javascript
    es6 tail call recursion
    map/reduce
    promises - js callback christmas tree of doom



# why is it useful

use spotify frontend guy's video example
    easier to reason about code
    hof
uncle bob video


# haskell concepts

compiled language, rich type system, type inference
ghci
lazy evaluation
list comprehension

    [(i,j) | i <- [1,2], j <- [1..4], i < j]

head - O1
tail - O1
nth element - On


# exercises

    pattern.hs
    reverse.hs
    factorial.hs
    last.hs
    curry.hs
    highest.hs
    repeat.hs
    sum.hs
    wrongorder.hs


