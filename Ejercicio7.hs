--  7. Define una función que rote una lista n posiciones
--     a la derecha.
-- |   rota [1, 2, 3, 4, 5] 2 = [4, 5, 1, 2, 3]

rota :: [a] -> Int -> [a]
rota [] n = [] --caso base
rota l 0 = l
rota l n = drop indice l ++ take indice l 
    where indice = (length l)-n --por el patrón encontrado en los ejercicios
    
    --la funcion drop excluye los primeros según al indice dado
    --la funcion take toma los primeros según el indice dado

{-





1 2 3 4 5
2 3 4 5 1
3 4 5 1 2 

4 5 1 2 3


2 3 4 5 1 
3 4 5 1 2 



4 [4] --

2 
1 2 3 4 5
2 3 4 5 1
3 4 5 1 2
4 5 1 2 3  --5-2=3

4 long 5
1 2 3 4 5
2 3 4 5 1 --

3 long 5
1 2 3 4 5
2 3 4 5 1
3 4 5 1 2 --

2 long 5
1 2 3 4 5
2 3 4 5 1
3 4 5 1 2
4 5 1 2 3

1 long 5 
1 2 3 4 5 
2 3 4 5 1
3 4 5 1 2 
4 5 1 2 3
5 1 2 3 4


















6 long 5 
1 2 3 4 5 
2 3 4 5 1
3 4 5 1 2
4 5 1 2 3
5 1 2 3 4

7 long 5 
1 2 3 4 5 
2 3 4 5 1
3 4 5 1 2
4 5 1 2 3



3
1 2 3
2 3 1
3 1 2 
1 2 3

1 (1+1) 
1 2 3 
2 3 1
3 1 2

3 
1 2 3 4
2 3 4 1




3 4 1 2
4 1 2 3
1 2 3 4








-}
