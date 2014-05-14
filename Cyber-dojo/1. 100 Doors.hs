module CyberDojo where

main = putStrLn "Cyber dojo - 100 Doors Problem !!"

-- Problem Statement: [FEC6CD]
--100 doors in a row are all initially closed. You make
--100 passes by the doors. The first time through, you
--visit every door and toggle the door (if the door is
--closed, you open it; if it is open, you close it).

--Question: What state are the doors in after the last
--pass? Which are open, which are closed?

n = 10
doors = take n (repeat False)

takeFromListBy 0 _ = []
takeFromListBy _ [] = []
takeFromListBy n xs
	| length xs < (n-1) = []
takeFromListBy n xs = element : takeFromListBy n (drop n xs)
	where
		element = head (drop (n-1) xs)

takeFromList n xs = map fst ( [t | t <- (zip xs [1..]), (snd t) `mod` n == 0])