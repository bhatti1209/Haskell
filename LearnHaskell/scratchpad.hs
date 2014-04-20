module Main where

main = putStrLn "Learning Haskell - ScratchPad !!"

double x = x + x 
quadruple x = double (double x)
collection = [1,2,3,4]
gethead = head collection
gettail = tail collection
take2 = take 3 collection

myList = [a | a <- [1..10], mod (a^2) 2 == 0]

lucky x = if x == 7
			then "Lucky 7"
			else "You Loose, Roll Again."