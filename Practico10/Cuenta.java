public class Cuenta{
	private int saldo;
	private Semaphore disponible;
	public Cuenta(int saldoInicial) {
		saldo = saldoInicial;
		disponible = new Semaphore(1);
	}
	
	public void deposita(int monto) {
		disponible.P();
		saldo += monto;
		disponible.V();
	}
	
	public void retira(int monto) {
		disponible.P();
		saldo -= monto;
		disponible.V();
	}
	
	public int getSaldo() {
    		return saldo; 
	}

	public void printSaldo() {
		disponible.P();
		System.out.println(saldo);
		disponible.V();
	}
}
