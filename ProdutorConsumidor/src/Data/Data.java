package Data;

public class Data {
	private int xpto;
	private boolean flag;
	
	public Data() {
		this.flag = false;
	}
	
	public synchronized void add(int xpto) throws InterruptedException {
		while(!flag) {
			wait();
		}
		this.xpto = xpto;
		this.flag = true;
		notifyAll();
	}
	
	public synchronized int get() throws InterruptedException {
		while(flag) {
			wait();
		}
		
		int x = this.xpto;
		this.flag = true;
		notifyAll();
		return x;
	}
}
