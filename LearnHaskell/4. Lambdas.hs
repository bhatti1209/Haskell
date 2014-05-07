module Main where

main = putStrLn "Learning Haskell - Lambdas !!"

chain 1 = [1]
chain n
	| even n = n : chain evenNumbers
	| odd n = n : chain oddNumbers
	where
		evenNumbers = (n `div` 2)
		oddNumbers = (n*3 + 1)

numLongChainsLambda = length (filter (\xs -> length xs > 15) (map chain [1..100]))

