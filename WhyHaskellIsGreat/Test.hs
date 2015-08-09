 -- https://www.youtube.com/watch?v=RqvCNb7fKsg

module Main where
import Data.List

main = putStrLn "Why Haskell is Great !!"

greeting = "hello"
swedish = intersperse 'f'
yell = (++ "!")

--try: swedish greeting
--try: yell greeting
--try: yell $ swedish greeting
--try: yell . swedish $ greeting

enthu f x = f(f(f x))
very  = enthu

--try: enthu yell greeting
--try: enthu yell $ swedish greeting

--try: enthu yell . very swedish $ greeting
--try: very enthu yell . very swedish $ greeting

--try: very swedish greeting
--now try: very very swedish greeting
-- (why does this happen !!!)