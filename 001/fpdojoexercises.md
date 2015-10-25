==> count.hs <==

==> curry.hs <==
max 4 5

(max 4) 5


==> factorial.hs <==
factorial 0 = 1
factorial n = n * factorial (n - 1)

factorial2 x = product [1..x]

main = putStrLn . show $ factorial2 5

==> highest.hs <==
-- tco
inner y (x:[]) = max y x
inner y (x:xs) = inner (max y x) xs

badhighest (x:[]) = x
badhighest (x:xs) = inner x xs




highest (x:[]) = x
highest (x:xs) = max x (highest xs)


main = putStrLn . show $ badhighest [1, 4, 3]

==> last.hs <==
mylast [] = error "Empty list"
mylast (x:[]) = x
mylast (x:xs) = mylast xs


mylast2 x = head ( reverse x )


mylast3 = head . reverse


main = putStrLn . show $ mylast3 [1, 4, 3]

==> pattern.hs <==
greet "doge" = "Wow greet! Very tail! Doge is happy to see you!"
greet name     = "Hello, I am " ++ name ++ "!"


main = putStrLn $ greet "doge"

==> repeat.hs <==
rep1 0 y = []
rep1 t y = [y] ++ rep1 (t - 1) y

rep2 t y = map (\x -> y) [1..t]

main = putStrLn . show $ rep1 3 1

==> reverse.hs <==
reverse1 [] = []
reverse1 (x:xs) = reverse1 xs ++ [x]

data List A :=
    EmptyList
    | Cons A (List A)

rev :: List A -> List A
rev EmptyList = EmptyList
cons (Cons x xs) = Cons 1 (cons xs)

main = putStrLn . show $ reverse1 [1..5]

==> sum.hs <==
sum1 [] = 0
sum1 (x:xs) = x + sum1 xs

sum2 xs = foldl (\acc y -> acc + y) 0 xs

sum3 xs = foldl (+) 0 xs

sum4 = foldl (+) 0

main = putStrLn . show $ sum4 [1, 2, 3, 4]

==> wrongorder.hs <==
isAscend x =  (fst x) > (snd x)

wrong xs = length $ filter isAscend $ zip xs (tail xs)
main = putStrLn . show $ wrong [1, 2, 3, 5, 4, 6, 7]
