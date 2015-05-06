multiples :: Int -> Int -> Bool
multiples x y = x `mod` y == 0

-- Below 1000 is 999
-- x will be add if is multiple of 3 or 5... Be careful!
sumMultiplesOf3And5 :: Int -> Int
sumMultiplesOf3And5 x
	| x == 0 = 0
	| multiples x 3 = x + sumMultiplesOf3And5 (x - 1)
	| multiples x 5 = x + sumMultiplesOf3And5 (x - 1)
	| otherwise = sumMultiplesOf3And5 (x - 1)