module CyberDojoScratchpad where
main = putStrLn "Cyber dojo - ScratchPad !!"

takeFromListBy 0 _ = []
takeFromListBy _ [] = []
takeFromListBy n xs
	| length xs < (n-1) = []
takeFromListBy n xs = element : takeFromListBy n (drop n xs)
	where
		element = head (drop (n-1) xs)

-- Better way to do the above
takeFromList1 n xs = map fst ( [t | t <- (zip xs [1..]), (snd t) `mod` n == 0])
-- or
takeFromList n xs = map fst $ [t | t <- (zip xs [1..]), (snd t) `mod` n == 0]
