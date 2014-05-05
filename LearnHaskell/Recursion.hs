module Main where

main = putStrLn "Learning Haskell - Recursion !!"

max1 [] = error "Empty List No Max."
max1 [x] = x
max1 (x:xs)
	| x > maxLeft = x
	| otherwise = maxLeft
	where maxLeft = max1 xs

max2 [] = error "Empty List No Max."
max2 [x] = x
max2 (x:xs) = max x (max2 xs)

take1 _ [] = []
take1 0 _ = []
take1 n (x:xs) = x: take1 (n-1) xs

take2 n _
	| n <= 0 = []
take2 _ [] = []
take2 n (x:xs) = x : take2 (n-1) xs

reverse1 :: [a] -> [a]
reverse1 [] = []
reverse1 (x:xs) = reverse1 xs ++ [x]

repeat1 :: a -> [a]
repeat1 x = [x] ++ repeat1 x
repeat2 x = x : repeat2 x

replicate1 n _
	| n == 0 = []
replicate1 n x = (first1 (repeat3 x)) : replicate1 (n-1) x
	where 
		repeat3 x = x : repeat3 x
		first1 (a:as) = a

replicate2 n x = take n (repeat x)

zip1 :: [a] -> [b] -> [(a,b)]
zip1 [] _ = []
zip1 _ [] = []
zip1 (a:as) (b:bs) = (a,b): zip1 as bs

elem1 :: Eq a => a -> [a] -> Bool
elem1 _ [] = False
elem1 a [b]
	| a == b = True
	|otherwise = False
elem1 a (b:bs) = elem1 a [b] || elem1 a bs

elem2 a [] = False
elem2 a (x:xs)
	| a == x = True
	| otherwise = elem2 a xs
