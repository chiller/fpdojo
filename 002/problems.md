# Question 1 - Last element of list

## Haskell

    mylast [] = error "Empty list"
    mylast (x:[]) = x
    mylast (_:xs) = mylast xs

## Clojure

    (defn mylast [l]
    (if (empty? (rest l))
    (first l)
    (mylast (rest l))))


# Question 2 - Last but one element of list

## Haskell

    mybutlast (x:_:[]) = x
    mybutlast (_:xs) = mybutlast xs
    mybutlast _ = error "Not enough elements in list"

## Clojure

    (defn mybutlast [l]
    (if (empty? (rest (rest l)))
    (first l)
    (mybutlast (rest l))))

# Question 3 - Element at position

## Haskell

    elemat 0 xs = head xs
    elemat y (x:xs) = elemat (y - 1) xs
    elemat _ _ = error "Derp error"

## Clojure

    (defn elemat [n l]
    (if (= 0 n)
    (first l)
    (elemat (- n 1) (rest l))))

# Question 4 - Length of a list

## Haskell

    mylength [] = 0
    mylength (_:xs) = 1 + mylength xs

## Clojure

    (defn mylength [l]
    (if (empty? l) 0
    (+ 1 (mylength (rest l)))))

# Question 5 - Reverse a list

## Haskell

    -- not a tail call
    rev [] = []
    rev (x:xs) = rev xs ++ [x]


    -- tail call
    inner [] reversed = reversed
    inner (x:xs) reversed = inner xs (x:reversed)

    -- myreverse xs = inner xs []
    myreverse  = (`inner` [])

    -- backticks turn a function that takes to parameters into an infix operator
    -- with parans it is possible to partially apply the second parameter
    -- (+2) is a function that takes 1 parameter
    -- (<2) is a function that checks if something is smaller than 2

## Clojure

    (defn myreverse [l]
    (if (empty? l) l
    (concat (myreverse (rest l)) [(first l)])))

    ;In vim you can use % to go to the matching parans


