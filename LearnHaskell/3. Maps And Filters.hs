module Main where

main = putStrLn "Learning Haskell - Maps And Filters !!"

map1 f [] = []
map1 f (a:as) = f a : map1 f as

filter1 _ [] = []
filter1 p (x:xs)
	| p x = x: filter1 p xs
	| otherwise = filter1 p xs

-- This is same as the filter function, this is to show it can be done using predicates also
filter2 p xs = [x | x <- xs, p x == True]