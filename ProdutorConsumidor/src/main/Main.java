package main;

import Consumidor.Consumidor;
import Data.Data;
import Produtor.Produtor;

public class Main {
	public static void main(String[] args) throws InterruptedException {
		Data data = new Data();
		int	idP1 = 1;
		int	idP2 = 2;
		int	idC1 = 1;
		int	idC2 = 2;
		int	producaoTotalP1	= 2;
		int	producaoTotalP2	= 3;
		int	totalConsumirC1	= 2;
		int	totalConsumirC2	= 2;
		
		Produtor p1 = new Produtor(data, idP1, producaoTotalP1);
		Thread t1 = new Thread(p1);
		
		Produtor p2 = new Produtor(data, idP2, producaoTotalP2);
		Thread t2 = new Thread(p2);

		Consumidor c1 = new Consumidor(data, idC1, totalConsumirC1);
		Thread t3 = new Thread(c1);
		
		Consumidor c2 = new Consumidor(data, idC2, totalConsumirC2);
		Thread t4 = new Thread(c2);
		
		t1.start();
		t2.start();
		t3.start();		
		t4.start();
	}
}
