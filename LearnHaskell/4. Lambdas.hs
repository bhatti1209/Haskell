module Lambda where

main = putStrLn "Learning Haskell - Lambdas !!"

chain 1 = [1]
chain n
	| even n = n : chain evenNumbers
	| odd n = n : chain oddNumbers
	where
		evenNumbers = (n `div` 2)
		oddNumbers = (n*3 + 1)

numLongChainsLambda = length (filter (\xs -> length xs > 15) (map chain [1..100]))

tupleToList :: (Num a) => [(a, a)] -> [a]
tupleToList a = map f a 
	where
		f (a, b) = (a + b)

tupleToListLambda a = map (\(a,b) -> a + b) a

sumByRecursion [] = 0
sumByRecursion (n:ns) = n+ sumByRecursion ns

sumByFoldUsingWhere xs = foldl f 0 xs
	where
		f s x = s + x

sumByFoldLambda xs = foldl (\s x -> s + x) 0 xs
