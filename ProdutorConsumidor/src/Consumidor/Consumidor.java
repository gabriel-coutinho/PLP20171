package Consumidor;

import Data.Data;

public class Consumidor implements Runnable{
	Data data;
	int id;
	int totalConsumir;
	public Consumidor(Data data, int id, int totalConsumir) {
		this.data = data;
		this.id = id;
		this.totalConsumir = totalConsumir;
	}

	@Override
	public void run() {
		for (int i = 0; i <= totalConsumir; i++) {
			try {
				int get = data.get();
				System.out.println("Consumidor# " + id + " consumiu: " + get);
				if(i != totalConsumir - 1) {
					System.out.println("Consumidor# " + id + " esperando...");
				} else {
					System.out.println("Consumidor# " + id + " concluido!");
				}
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		
	}
}
