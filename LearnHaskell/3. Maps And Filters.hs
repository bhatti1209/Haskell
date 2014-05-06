module Main where

main = putStrLn "Learning Haskell - Maps And Filters !!"

map1 f [] = []
map1 f (a:as) = f a : map1 f as

filter1 _ [] = []
filter1 p (x:xs)
	| p x = x : filter1 p xs
	| otherwise = filter1 p xs

-- This is same as the filter function, this is to show it can be done using predicates also
filter2 p xs = [x | x <- xs, p x == True]

quicksortfilter [] = []
quicksortfilter (x:xs) = smallerList ++ [x] ++ biggerList
	where
		smallerList = quicksortfilter (filter (<=x) xs)
		biggerList = quicksortfilter (filter (>x) xs)

largestDivisble :: (Integral a) => a
largestDivisble  = head (filter p [100000, 99999..])
	where
		p x = x `mod` 3829 == 0

largestDiviserOfInList :: (Integral a) => a -> a -> a
largestDiviserOfInList d x = head (filter p [x, x-1..])
	where
		p x = mod x d == 0

takeWhile1 _ [] = []
takeWhile1 p (x:xs)
	| p x = x : takeWhile1 p xs
	| otherwise = []

-- sum of all odd squares less than 10000
infiniteOddSqaures = [x^2 | x <- [1..], odd x == True]
infiniteOddMapSquares = filter (odd) (map (^2) [1..])
sumOfSquaresLessThan x = sum (takeWhile (<x) infiniteOddMapSquares)