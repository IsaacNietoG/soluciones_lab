repite :: [a] -> Int -> [a] -- Caso base: Si la lista de entra es Vacia, devuelve una lista vacia
repite [] _ = []-- Caso recursivo.  
repite (x:xs) n = repiteCabeza x n ++ repite xs n  
  where
    repiteCabeza _ 0 = [] -- Cuando n es 0, devuelve una lista vacía
    repiteCabeza x n = x : repiteCabeza x (n - 1) -- Repite el elemento n veces.
