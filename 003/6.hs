-- ispalindrome xs = xs == reverse xs

reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

equal [] [] = True
equal (x:xs) (y:ys) = x == y && equal xs ys
equal _ _ = False

ispalindrome xs = equal (reverse' xs) xs

main = putStrLn . show $ ispalindrome "abba"

