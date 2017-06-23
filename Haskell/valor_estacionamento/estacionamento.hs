main = do veiculo <- getLine
          if veiculo == "moto"
              then print 5
              else if veiculo == "carro"
				then print 10
				else print 30
