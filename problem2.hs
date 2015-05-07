fibonacci :: Int -> Int -> Int -> Int
fibonacci previousNumber nextNumber position
	| position == 0 = previousNumber
	| otherwise = fibonacci nextNumber (previousNumber + nextNumber) (position - 1)

fibonacciOfPositon :: Int -> Int
fibonacciOfPositon fibonacciPosition = fibonacci 1 1 fibonacciPosition

-- Problem1 function
multiples :: Int -> Int -> Bool
multiples x y = x `mod` y == 0

-- Return the same number if is even or 0 if not
evenNumber :: Int -> Int
evenNumber originalNumber
	| multiples originalNumber 2 = originalNumber
	| otherwise = 0

-- Always return 1 =(
{-
recursiveSumWhere :: Int -> Int
recursiveSumWhere x
	| x == 0 = originalSum
	| otherwise = recursiveSumWhere (x - 1)
	where originalSum = x + 1
-}
	
-- Start in 0 position and get the sum of all the even numbers under fibonacci number which value is less than 4000000
getFibonacciSumUnder4Million :: Int -> Int 
getFibonacciSumUnder4Million actualPos 
	| (evenNumber (fibonacciOfPositon actualPos) >= 4000000) = 0
	| otherwise = evenNumber (fibonacciOfPositon actualPos) + getFibonacciSumUnder4Million (actualPos + 1)