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

--Implement "maximum, reverse, product, filter, head, last" using folds
maxByFold xs = foldl1 (\acc x -> if x > acc then x else acc) xs

reverseByFold xs = foldl (\acc x -> x : acc) [] xs

productByFold xs = foldl (\acc x -> acc * x) 1 xs
productByFold2 xs = foldr1 (*) xs

filterByFold p xs = foldr (\x acc -> if (p x) then x : acc else acc) [] xs

headByFold xs = foldl1 (\acc _ -> acc) xs
headByFold2 xs = foldr1 (\x acc -> x) xs

lastByFold xs = foldr1 (\_ acc -> acc) xs
lastByFold2 xs = foldl1 (\acc x -> x) xs

--sumOfOddSq = sum $ takeWhile (<10000) $ filter (odd) $ map (^2) [1..]
sumOfOddSq = sum . takeWhile (<10000) . filter (odd) . map (^2) $ [1..]