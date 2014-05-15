module CyberDojo where
main = putStrLn "Cyber dojo - 100 Doors Problem !!"

-- Problem Statement: [FEC6CD]
--100 doors in a row are all initially closed. You make
--100 passes by the doors. The first time through, you
--visit every door and toggle the door (if the door is
--closed, you open it; if it is open, you close it).

--Question: What state are the doors in after the last
--pass? Which are open, which are closed?

n = 100
doors = take n (repeat False)

ans :: Int -> [Bool] -> Int
ans n xs = length (iteration n xs)

iteration :: Int -> [Bool] -> [Bool]
iteration n xs
	| n > length xs = xs
	| otherwise = filter (\v -> v) $ iteration (n+1) (toggleDoors n xs)

toggleDoors :: (Integral b) => b -> [Bool] -> [Bool]
toggleDoors n xs = map toggleTupple $ [t | t <- (zip xs [1..])]
	where
		toggleTupple t = if ((snd t) `mod` n == 0)
				      then
				      	not $ fst t
				      else
				      	fst t

