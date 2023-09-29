--Actividad 20
sumaEl :: [Int] -> Int
sumaEl [] = 0
sumaEl (x:xs) = x + sumaEl xs

separa :: Int -> [Int]
separa a = if a < 10 then [a] else (separa (a `div` 10)) ++ [(a `mod` 10)]

persistencia' :: Int -> Int -> Int
persistencia' c a = if ((sumaEl (separa a)) < 10) then c else persistencia' (c+1) (sumaEl (separa a))

persistencia :: Int -> Int
persistencia a = persistencia' 1 a  
