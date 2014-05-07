module MapsAndFilters where

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
infiniteOddSqaures = [x^2 | x <- [1..], odd (x^2) == True]
infiniteOddMapSquares = filter (odd) (map (^2) [1..])
sumOfSquaresLessThan x = sum (takeWhile (<x) infiniteOddMapSquares)

-- Collatz sequences: 
-- [starting number 13, we get this sequence: 13, 40, 20, 10, 5, 16, 8, 4, 2, 1. 
-- 13*3 + 1 equals 40. 40 divided by 2 is 20, etc. We see that the chain has 10 terms.]
-- for all starting numbers between 1 and 100, how many chains have a length greater than 15
chain 1 = [1]
chain x
	| even x = x : chain evenNumber
	| odd x = x : chain oddNumber
	where 
		evenNumber = (x `div` 2)
		oddNumber = (x*3 + 1)

repeatChainFor n = [chain x | x <- [1..n]] -- like "map chain [1..100]"
collatzSequenceLengthMoreThanTill100 n = length (filter (>n) (map length (repeatChainFor 100)))

 -- best (alternate) way
numLongChain = length (filter isLong (map chain [1..100]))
	where
		isLong x = length x > 15

listOfFuncs = map (*) [0..]
multiplyByTwo = map (*2) [0..]