public class Semaphore{
	private int  num;

	public Semaphore(int n){
		num = n;
	}

	public synchronized void P(){
		while (num <= 0){
			try{
				wait();
			}
			catch(InterruptedException e){
			}
		}
		num--;
	}

	public synchronized void V(){
		num++;
		notifyAll();
	}
}
