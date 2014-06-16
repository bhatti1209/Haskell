--Write a recursive function which verifies the balancing of parentheses in a string.
--For example, the function should return true for the following strings:
--	•	(if (zero? x) max (/ 1 x))
--	•	I told him (that it’s not (yet) done). (But he wasn’t listening)
--The function should return false for the following strings:
--	•	:-)
--	•	())(
--The last example shows that it’s not enough to verify that a string contains the same number of opening and closing parentheses.


balance :: [Char] -> Bool
balance xs
	| getCount xs == 0 = True
	|otherwise = False

getCount xs = foldl (conditions) 0 xs
	where
		conditions acc x
			| x == '(' = (if acc >=0 then (acc + 1) else acc)
			| x == ')' = (if acc==0 then -1 else (acc-1)) 
			| otherwise = acc


-- Extra's
--getCount xs = foldl (\acc x -> if x=='(' then (if acc >=0 then (acc + 1) else acc) else if x==')' then (if acc==0 then -1 else (acc-1)) else acc ) 0 xs

--filterParan xs = filter (getSymbol) xs
--	where
--		getSymbol x
--			| x == ')' = True
--			| x == '('  = True
--			|otherwise = False

--getCharCount c xs = foldl (\acc x -> if x==c then (acc + 1) else acc ) 0 xs