flatten (x:xs) = x ++ flatten xs
flatten [] = []

flatten'  = foldl (++) []

flatten'' xs = [x | i<-xs, x<-i ]
main = putStrLn . show $ flatten [[1,2], [3,4]] -- [1,2,3,4]

-- all right triangles that have integer sides with sides < 20
-- [(x,y,z) |  x<-[1..20], y<-[1..20], z<-[1..20], x**2 + y**2 == z**2, x < y]
-- python
-- [(x,y,z) for x in range(10) for y in range(10) for z in range(10) if (x**2 + y**2 == z**2) and x < y]
