--The following pattern of numbers is called Pascal’s triangle.
--    1
--   1 1
--  1 2 1
--1 3 3 1
--1 4 6 4 1
--The numbers at the edge of the triangle are all 1, and each number inside the 
--triangle is the sum of the two numbers above it. 
--Write a function that computes the elements of Pascal’s triangle by means 
--of a recursive process.
--Do this excersice which takes a column c and a row r, counting from 0 and 
--returns the number at that spot in the triangle. 
--For example, pascal(0,2)=1, pascal(1,2)=2 and pascal(1,3)=3.

pascal :: Int -> Int -> Int
pascal c r = head $drop (dropValue) (pascalTriangle r)
	where
		dropValue = (sum [1..r]) + c

pascalTriangle 0 = [1]
pascalTriangle r = previousLevel ++ ([1] ++ evalPascal (drop (sum [1..(r-1)]) previousLevel) ++ [1])
	where
		previousLevel = pascalTriangle (r-1)
		evalPascal xs = sumPairs xs

sumPairs :: [Int] -> [Int]
sumPairs [] = []
sumPairs (x:[]) = []
sumPairs (x:y:[]) = (x + y):[]
sumPairs (x:y:xs) = (sumPairs (x:y:[])) ++ (sumPairs (y:xs))
