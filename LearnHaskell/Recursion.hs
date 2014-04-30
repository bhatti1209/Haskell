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

