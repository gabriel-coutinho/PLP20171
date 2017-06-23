main = do 
		put1 <- getLine
		let alcool = read put1 :: Double
		put2 <- getLine
		let gasolina = read put2 :: Double
		put3 <- getLine
		let litros = read put3 :: Double
		print (melhor(alcool, gasolina, litros))
melhor :: (Double, Double, Double) -> Double
melhor (alcool, gasolina, litros)
	| alcool < gasolina * 0.7 = alcool * litros
	| otherwise = gasolina * litros
