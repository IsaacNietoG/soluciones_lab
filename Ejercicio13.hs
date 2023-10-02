--Hernandez Garcia Oscar Yahir
--Tapia Sánchez Jesús
--Echeverría Verduzco Jesús 
esNumeroPerfecto :: Int -> Bool
esNumeroPerfecto n 
  | n <= 1 = False
  | otherwise = n == sumaDivisoresPropios n

sumaDivisoresPropios :: Int -> Int
sumaDivisoresPropios n = sum [x | x <- [1..n-1], n `mod` x == 0]
