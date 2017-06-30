main = do
         input <- getLine
         let l1 = (map read $ words input :: [Int])
         input <- getLine
         let l2 = (map read $ words input :: [Int])
         organizaPrints(l1, l2);
         

organizaPrints :: ([Int], [Int]) -> IO()
organizaPrints([], []) = putStrLn("")
organizaPrints(c:cs, x:xs) = do
    print(c - x)
    organizaPrints(cs, xs)


