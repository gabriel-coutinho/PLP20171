
main = do
         input <- getLine
         let l1 = (words input)
         input <- getLine
         let l2 = (words input)
         putStrLn(organizaPrints(l1, l2));


organizaPrints :: ([String], [String]) -> String
organizaPrints([], []) = []
organizaPrints(c:cs, x:xs) = c ++ " " ++ x ++"\n" ++ organizaPrints(cs, xs)
