module HigherOrderFunctions where

main = putStrLn "Learning Haskell - Higher Order Functions !!"

multiplyThreeDigits :: (Num a) => a -> a -> a -> a
multiplyThreeDigits x y z = x * y * z

multiplyTwoDigitsWithThree = multiplyThreeDigits 3

divideBy10 = (/10)

applyTwice f x = f (f x)

zipWith1 f [] _ = []
zipWith1 f _ [] = []
zipWith1 f (a:as) (b:bs) = f a b : zipWith1 f as bs

flip1 f a b = f b a

flip2 f = g
	where
		g x y = f y