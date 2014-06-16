module Folds where

main = putStrLn "Learning Haskell - Folds !!"

sumByRecursion [] = 0
sumByRecursion (n:ns) = n+ sumByRecursion ns

sumByFoldUsingWhere xs = foldl f 0 xs
	where
		f acc x = acc + x

sumByFoldLambda xs = foldl (\acc x -> acc + x) 0 xs

sumByFoldCurry = foldl (+) 0 -- "(+) == (\acc x -> acc+ x)"

elemByFold e xs = foldl (\acc x -> if x == e then True else acc) False xs
