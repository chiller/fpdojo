Functional Programming Dojo Handout
===================================

Haskell
-------

* Function definition
    - `myfun arg1 arg2 = arg1 * arg2`
    - there is no need for `function` keyword, brackets or commmas
    - to call a function `myfunc` with an argument `1` do `myfunc 1`

* Pattern matching (The first rule that matches will apply)

    ```
    valid [] = "empty list"
    valid xs = "nonempty list"
    ```

* Linked lists
    - `[1,2,3,4]` is really `1:2:3:4:[]` where `:` is the cons operator (aka prepend)
    - `1:[2,3]` produces `[1,2,3]`
    - `head [1,2,3]` is `1`
    - `tail [1,2,3]` is `[2,3]`
    - to concatenate do: `[1] ++ [2,3]` is `[1,2,3]`
       (notice the first operand is also a list)
* Destructuring in definitions
    - `myfun (x:ys) = x` is the same as `myfun xs = head xs`
        (which is really the same as `myfun = head`)
* When you need to think of a recursive solution think:
    - when will the recursion stop aka what is the base/simplest case
    - how do I reduce a larger problem to a smaller one
    - kind of pointless example

       ```
       countdown 0 = "done" -- base case, we stop when we hit 0
       countdown n = countdown (n - 1) -- generally we just simplify the problem
       ```




Higher Order Functions
----------------------

* anonymous functions aka lambda functions
    `function(x){return 2*x}` in js is `\x -> 2*x` in Haskell
    Note the \ that is a simplified λ
    So `myfun = \x -> 2*x` is the same as `myfun x = 2 * x`
* `filter cond list` returns a new list with the elements that pass the condition

    `filter (\x -> x < 5) [1,2,3,4,5,6,7,8]` is `[1,2,3,4]`
* `map func list` returns a new list that contains func(i) for every i in list
    `map (\x -> x * 2) [1,2,3]` is `[2,4,6]`
* `foldl func acc list` (kind of like reduce in js)
    updates acc like so `acc = func(acc, i)` for every i in list

    `sum (x:xs) = foldl (\x y -> x+y) x xs`


