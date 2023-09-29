--Define una función que calcule los primeros
--     n números de la serie Fibonacci.
-- |   fibs 5 = [0, 1, 1, 2, 3]

fibonacci :: Int -> [Int]
fibonacci 0 = []
fibonacci n = fibonacci (n-1) ++ [fibonacciAux n]
  where fibonacciAux:: Int -> Int
        fibonacciAux 1 = 0
        fibonacciAux 2 = 1
        fibonacciAux 3 = 1
        fibonacciAux n = fibonacciAux (n-1) + fibonacciAux (n-2)
