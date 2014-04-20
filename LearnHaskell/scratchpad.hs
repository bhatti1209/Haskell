module Main where

main = putStrLn "Haskell Build Working !!"

double x = x + x 
quadruple x = double (double x)
collection = [1,2,3,4]
gethead = head collection
gettail = tail collection
take2 = take 3 collection