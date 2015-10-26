# what is fp

- first-class functions
- higher-order functions
    filter, map, reduce
- pure functions - no mutation, no assignment 
    easier to understand code without looking at the function body
    referential transparency
- recursion instead of loops
- encourages writing code using expressions rather than statements 
- large emphasis on [function composition](https://en.wikipedia.org/wiki/Function_composition)

Example of imperative programming:

        int total = 0;
        for(int i = 1; i<=10; i++){
            total = total + 1;
        }

- statements, mutable state

Same example in a functional style:

    sum [1..10]

- no statements, expressions
   
# functional programming in javascript
    
- es6 tail call recursion
- map/reduce
- promises - js callback christmas tree of doom


# why is it useful

- easier to reason about code
- because you avoid mutable/global state - for multithreaded applications this reduces the need 
for locking/mutual exclusions/worrying about race conditions. Since processors nowadays improve in
the number of cores vs single core processing speed Uncle Bob predicts a rise in parallel applications.

[Source](https://www.youtube.com/watch?v=7Zlp9rKHGD4)

- producing code is hard, producing large amounts of code is very hard. Naming things and expressing your ideas in code is still hard - the kind of higher level abstraction enabled by the functional style can be a powerful addition to your vocabulary. You may never develop in a pure functional environment, but knowing what tools to pick in what situation is a useful thing. See [when all you have is a hammer](https://en.wikipedia.org/wiki/Law_of_the_instrument)

# haskell concepts in random order

- compiled language
- rich type system
- type inference
- ghci, interactive shell
- lazy evaluation
- list comprehension

    `[(i,j) | i <- [1,2], j <- [1..4], i < j]`

- (linked) list as primary data structure

    - head - `O(1)`
    - tail - `O(1)`
    - nth element - `O(n)` see [Big O cheatsheet](http://bigocheatsheet.com/)

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


