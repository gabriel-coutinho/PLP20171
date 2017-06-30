main = do
         pl1 <- getLine
         pl2 <- getLine
         pl3 <- getLine
         pl4 <- getLine
         pl5 <- getLine
         putStrLn(testaUltimaVogal(last(pl1)) ++ testaUltimaVogal(last(pl2)) ++ testaUltimaVogal(last(pl3)) ++ testaUltimaVogal(last(pl4)) ++ testaUltimaVogal(last(pl5)))

testaUltimaVogal :: Char -> String
testaUltimaVogal char
    |char == 'a' || char == 'A' = "a"
    |char == 'e' || char == 'E' = "e"
    |char == 'i' || char == 'I' = "i"
    |char == 'o' || char == 'O' = "o"
    |char == 'u' || char == 'U' = "u"
    |otherwise = ""

