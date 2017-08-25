package Produtor;

import Data.Data;

public class Produtor implements Runnable{
	Data data;
	int id;
	int producaoTotal;
	
	public Produtor(Data data, int id, int producaoTotal) {
		this.data = data;
		this.id = id;
		this.producaoTotal = producaoTotal;
	}

	@Override
	public void run() {
		for (int i = 0; i < producaoTotal; i++) {
			try {
				data.add(i);
				System.out.println("Produtor# " + id + " produziu: " + i);
				if(i != producaoTotal - 1) {
					System.out.println("Produtor# " + id + " esperando...");
				} else {
					System.out.println("Produtor# " + id + " concluido!");
				}
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		
	}
}

