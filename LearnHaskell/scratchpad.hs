module Main where

main = putStrLn "Learning Haskell - ScratchPad !!"

getHeadOf xs = head xs

myList = [a | a <- [1..10], mod (a^2) 2 == 0]
myListOf xs = [a | a <- xs, mod (a^2) 2 == 0]

lucky x = if x == 7
			then "Lucky 7"
			else "You Loose, Roll Again"

luckyPatt :: (Integral a) => a -> String
luckyPatt 7 = "Luck 7 !!"
luckyPatt x = "Better Luck Next Time."

myLengthList xs = sum [1 | b <- xs]

myLengthPattern :: (Num y) => [x] -> y
myLengthPattern [] = 0
myLengthPattern (_:  xs) = 1 + myLengthPattern(xs)

luckyGuard x
	| x == 7 = "Luck 7, You Win !!"
	| otherwise = "Not Today !!"

max1 a b
	| a > b  = a
	| otherwise = b

a `max2` b
	| a > b = a
	| otherwise = b

initials1 firstname lastname = [f] ++ ". " ++ [l] ++ "."  
    where 
	(f:_) = firstname  
	(l:_) = lastname

initials2 (f:_) (l:_) = [f] ++ ". " ++ [l] ++ "."  

