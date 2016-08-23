# Folds

https://wiki.haskell.org/Fold

    -- if the list is empty, the result is the initial value z; else
    -- apply f to the first element and the result of folding the rest
    foldr f z []     = z
    foldr f z (x:xs) = f x (foldr f z xs)

    -- if the list is empty, the result is the initial value; else
    -- we recurse immediately, making the new initial value the result
    -- of combining the old initial value with the first element.
    foldl f z []     = z
    foldl f z (x:xs) = foldl f (f z x) xs

Notice how foldl is tail recursive, but does not terminate on infinite lists
foldr however can short-cirtuit

    foldr (\y x -> (y<10) && x) True [1..]




Some solution to the 99 haskell problems using folds

    --1
    mylast xs = foldl (\x z -> x) head(xs) tail(xs)
    --2
    let myButLast xs = fst $ foldl (\pair x -> (snd pair,x)) (head xs, head (tail xs)) (drop 2 xs)
    --4
    count = foldl (\acc x -> acc + 1) 0
    --5
    reverse = foldl (\z x -> x:z) [] xs


